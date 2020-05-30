{-# LANGUAGE OverloadedStrings, DataKinds, FlexibleContexts #-}
module GrpcServer where

import Prelude hiding (error)
import Network.GRPC.Server
import Control.Lens
import Data.ProtoLens.Message (defMessage)
import Network.Wai.Handler.WarpTLS (tlsSettingsChain, onInsecure, OnInsecure(..))
import Network.Wai.Handler.Warp (setPort, setServerName, defaultSettings, run)
import Network.GRPC.HTTP2.ProtoLens
import Network.GRPC.HTTP2.Encoding (gzip)
import System.IO (hSetBuffering, stdin, stdout, BufferMode(..))

import Proto.RaftGrpc
import Proto.RaftGrpc_Fields

import Paths_playground

startGrpcServer :: IO ()
startGrpcServer = do
    dataDir <- getDataDir
    runGrpc
      ((tlsSettingsChain 
        (dataDir ++ "/certs/Server.crt") 
        [dataDir ++ "/certs/My_Root_CA.crt"] 
        (dataDir ++ "/certs/Server.key")) {onInsecure = AllowInsecure})
      (setPort 3000 . setServerName "SPP Playground" $ defaultSettings)
      handlers
      [gzip]

waiGrpcApp :: IO ()
waiGrpcApp = run 3000 $ grpcApp [] handlers


handleVoteRequest :: UnaryHandler IO RequestVoteRequest RequestVoteResponse
handleVoteRequest req input =
  return $ defMessage & term .~ (input ^. term + 1)

handleAppendEntries :: UnaryHandler IO AppendEntriesRequest AppendEntriesResponse
handleAppendEntries req input = return $ defMessage & term .~ (input ^. term + 1)

handleInstallSnapshot :: UnaryHandler IO InstallSnapshotRequest InstallSnapshotResponse
handleInstallSnapshot req input = return $ defMessage & term .~ (input ^. term + 1)

handlers :: [ServiceHandler]
handlers = [
    unary (RPC :: RPC RaftService "requestVote") handleVoteRequest,
    unary (RPC :: RPC RaftService "appendEntries") handleAppendEntries,
    unary (RPC :: RPC RaftService "installSnapshot") handleInstallSnapshot,
    generalStream (RPC:: RPC RaftService "appendEntriesPipeline") handleDummyBiDiGeneralStream
  ]


handleDummyBiDiGeneralStream :: GeneralStreamHandler IO AppendEntriesRequest AppendEntriesPipelineResponse Int Int 
handleDummyBiDiGeneralStream _ = do
    hSetBuffering stdin LineBuffering
    hSetBuffering stdout LineBuffering
    print "general-bidistream-start"
    return (0 , incoming, 10 , outgoing)
  where
    incoming = IncomingStream handleMsg handleEof
    handleMsg n msg = print ("general-msg", n, msg) >> pure (n + 1)
    handleEof n     = print ("general-eof", n)
    outgoing = OutgoingStream (\n -> print ("general-out", n) >> getNext n)
    getNext 0 = pure Nothing
    getNext c = pure $ Just (c - 1, defMessage & error .~ "wahaha")