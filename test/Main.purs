module Test.Main where

import Prelude
import Effect (Effect)
-- import Effect.Console (log)
import Test.QuickCheck (quickCheck, (<?>))

import Boombayah.Utils (sanityAdd)

main :: Effect Unit
main = do
  quickCheck \a b ->
    let 
      actual = sanityAdd a b
      expected = a + b
    in
      actual == expected <?> show actual <> " not equal to " <> show expected
