module Boombayah.Handler where

import Prelude
import Data.Function.Uncurried (Fn3, Fn2, mkFn3, runFn2)
import Foreign.NullOrUndefined (undefined)
import Foreign (Foreign)

type Header = { "Content-Type" :: String }

newtype StatusCode = StatusCode String

type Response = 
  { statusCode :: StatusCode
  , body :: String
  , headers :: Header
  }

response :: Response
response = 
  { statusCode: StatusCode "200"
  , body: "Hello World"
  , headers: 
    { "Content-Type": "application/json" }
  }

type Callback = Fn2 Foreign Response Unit

handler :: Fn3 Unit Unit Callback Unit
handler = mkFn3 \_ _ cb -> runFn2 cb undefined response