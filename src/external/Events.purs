module Boombayah.External.Events where

import Prelude

-- See AWS HTTP Lambda section in the readme
-- for an example event (or generate one in your
-- lambda console). Note that this is only a partial
-- representation of the entire lambda event; add more
-- this as necessary!
newtype LambdaRequest = LambdaRequest
  { httpMethod :: String
  , body :: String
  }

