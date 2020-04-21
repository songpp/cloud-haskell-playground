{-# LANGUAGE GADTs, TemplateHaskell #-}
module Cluster where

import Network.Transport.TCP (defaultTCPAddr, createTransport, defaultTCPParameters)
import Control.Distributed.Process
import Control.Distributed.Process.Closure
import Control.Distributed.Process.Node
import Control.Concurrent (threadDelay)
import Control.Monad (forever)


replyBack :: (ProcessId, String) -> Process ()
replyBack (sender, msg) = send sender msg

logMessage :: String -> Process ()
logMessage msg = say $ "handling " ++ msg


sampleTask :: (Int, String) -> Process ()
sampleTask (t, s) = liftIO (threadDelay (t * 1000000)) >> say s

remotable ['sampleTask]

myRemoteTable :: RemoteTable
myRemoteTable = Cluster.__remoteTable initRemoteTable


startMaster = do
  bindResult <- createTransport (defaultTCPAddr "127.0.0.1" "10501") defaultTCPParameters 
  case bindResult of
    Right t -> do 
      node <- newLocalNode t myRemoteTable
      runEcho node
      runRemote node
      closeLocalNode node
    Left e -> error (show e)
  return ()

runRemote node = runProcess node $ do
  us <- getSelfNode
  _ <- spawnLocal $ sampleTask (1 :: Int, "using spawnLocal")
  pid <- spawn us $ $(mkClosure 'sampleTask) (1 :: Int, "using spawn")
  liftIO $ threadDelay 2000000


runEcho node = runProcess node $ do
    echoPid <- spawnLocal $ forever $ receiveWait [match logMessage, match replyBack]

    say "send some messages!"
    send echoPid "hello"

    self <- getSelfPid 
    send echoPid (self, "hello" :: String)

    m <- expectTimeout 1000000
    case m of 
      Nothing -> die "nothing come back!"
      Just s  -> say $ "got " ++ s ++ " back!"
    
    liftIO $ threadDelay 2000000


