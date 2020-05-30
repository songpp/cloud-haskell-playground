{-# LANGUAGE GADTs, TemplateHaskell, DeriveDataTypeable #-}
module Cluster where

import Network.Transport.TCP (defaultTCPAddr, createTransport, defaultTCPParameters)
import Control.Distributed.Process
import Control.Distributed.Process.Closure
import Control.Distributed.Process.Node hiding (newLocalNode)

import Control.Distributed.Process.Backend.SimpleLocalnet

import Control.Concurrent (threadDelay)
import Control.Monad (forever, forM_)

replyBack :: (ProcessId, String) -> Process ()
replyBack (sender, msg) = send sender msg

logMessage :: String -> Process ()
logMessage msg = say $ "handling " ++ msg
sampleTask :: (Int, String) -> Process ()
sampleTask (t, s) = liftIO (threadDelay (t * 1000000)) >> say s

remotable ['sampleTask]

myRemoteTable :: RemoteTable
myRemoteTable = Cluster.__remoteTable initRemoteTable

startNode host port = do
  backend <- initializeBackend host port myRemoteTable
  node <- newLocalNode backend 
  runProcess node $ do
    echoPid <- spawnLocal $ forever $ receiveWait [match logMessage, match replyBack]
    liftIO $ threadDelay 20000000

startMaster host port = do
  backend <- initializeBackend host port myRemoteTable
  node <- newLocalNode backend 
  peers <- findPeers backend 1000000
  runProcess node $ forM_ peers $ \peer -> nsendRemote peer  ("echo-server" :: String) ("hello!" :: String)


runRemote :: LocalNode -> IO ()
runRemote node = runProcess node $ do
  us <- getSelfNode
  _ <- spawnLocal $ sampleTask (1 :: Int, "using spawnLocal")
  pid <- spawn us $ $(mkClosure 'sampleTask) (1 :: Int, "using spawn" :: String)
  liftIO $ threadDelay 2000000


runEcho :: LocalNode -> IO ()
runEcho node = runProcess node $ do
    echoPid <- spawnLocal $ forever $ receiveWait [match logMessage, match replyBack]

    say "send some messages!"
    send echoPid ("hello" :: String)

    self <- getSelfPid 
    send echoPid (self, "hello" :: String)

    send echoPid ("what ever" :: String)

    m <- expectTimeout 1000000
    case m of 
      Nothing -> die ("nothing come back!" :: String)
      Just s  -> say $ "got " ++ s ++ " back!"
    
    liftIO $ threadDelay 2000000


