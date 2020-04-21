module Main where

import Lib
import GrpcServer

main :: IO ()
main = do
  conf <- defaultConfiguration
  putStrLn "start grpc server..."
  startGrpcServer

