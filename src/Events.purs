module Boombayah.Events where

import Prelude
import Boombayah.External.Events (LambdaRequest)
import Data.Maybe (Maybe(..))

data HTTPMethod = Post | Get | Put | Delete

type EchoBodyEvent = 
  { httpMethod :: HTTPMethod
  , body :: EchoBody
  }

type EchoBody = { message :: String }

echoBodyEvent :: HTTPMethod -> EchoBody -> EchoBodyEvent
echoBodyEvent a b = { httpMethod: a, body: b }

-- parseEchoBodyEvent :: LambdaRequest -> Maybe EchoBodyEvent
-- parseEchoBodyEvent req = 