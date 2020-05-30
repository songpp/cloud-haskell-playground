{-# LANGUAGE OverloadedStrings, DataKinds, PolyKinds, GADTs #-}

module Lib where

import Control.Concurrent.STM
import Control.Concurrent.STM.TVar ()
import Data.TimerWheel

import Refined

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

type HostName = Refined NonEmpty String
type Term = Refined (GreaterThan 0) Int

data SpecialRequest = SpecialRequest {
        term :: Term
    } deriving (Show, Eq)


validatedRequest :: Either RefineException SpecialRequest
validatedRequest = do
    t <- refine 1
    return (SpecialRequest t)