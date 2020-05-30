{-# LANGUAGE GADTs, OverloadedStrings #-}
module Streaming where

import Streamly
import qualified Streamly.Prelude as S
import Network.HTTP.Simple
import Control.Concurrent

delay :: IsStream t => Int -> t IO ()
delay n = S.yieldM $ do
  threadDelay ( n * 1000000)
  tid <- myThreadId
  putStrLn (show tid ++ ": Delay " ++ show n)


batchFetch :: IO ()
batchFetch = S.drain . parallely $ google <> bing <> baidu
    where
        google     = get "https://www.google.com/search?q=haskell"
        bing       = get "https://www.bing.com/search?q=haskell"
        baidu      = get "https://www.baidu.com/?q=haskell"
        get s = S.yieldM (httpNoBody (parseRequest_ s) >> print s)

composed :: (IsStream t, Monad (t IO)) => t IO ()
composed = do
    sz <- sizes
    cl <- colors
    sh <- shapes
    S.yieldM $ print (sz, cl, sh)
  where
    sizes  = S.fromFoldable [1, 2, 3]
    colors = S.fromFoldable ["red", "green", "blue"]
    shapes = S.fromFoldable ["triangle", "square", "circle"]