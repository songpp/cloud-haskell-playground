{-# LANGUAGE OverloadedStrings #-}

module Lib (
    defaultConfiguration,
    Configuration(..)
) where

import Control.Concurrent.STM
import Control.Concurrent.STM.TVar
import Data.TimerWheel

defaultConfiguration :: IO Configuration
defaultConfiguration = fmap Configuration defaultTimerWheel

counter :: STM (TVar Int)
counter = newTVar 0


data Configuration = Configuration {
    timer :: TimerWheel
}

defaultTimerWheelConfig :: Config
defaultTimerWheelConfig = Config 10 0.05

defaultTimerWheel :: IO TimerWheel
defaultTimerWheel = create defaultTimerWheelConfig