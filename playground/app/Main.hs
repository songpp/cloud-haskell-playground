module Main where

import Lib
import GrpcServer
import Paths_playground

main :: IO ()
main = do
  conf <- defaultConfiguration
  let t = timer conf
  putStrLn "start grpc server..."
  dirs <- sequence [getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir] 
  print dirs
  startGrpcServer