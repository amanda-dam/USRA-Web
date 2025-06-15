module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)

import WebDirt

-- foreign import newWebDirt :: forall opts. Record opts -> Effect WebDirt
-- foreign import initializeWebAudio :: WebDirt -> Effect Unit

main :: Effect Unit
main = do
  log "🍝"
  wd <- newWebDirt { sampleMapUrl: "sampleMap.json" }
  initializeWebAudio wd
  pure unit
  
-- module Effect.Ref: a way of reading/writing/storing values of particular types
-- eg. WebDirt, current Program, current error message, things to do with tempo, anything important about the state of the implementation

-- looking ahead: a quick, rough model of a live coding language:
-- (no main)
-- newMyLanguage :: Effect MyLanguage -- MyLanguage is a record type probably contain Refs a la Effect.Ref
-- evaluate :: MyLanguage -> String -> Effect Unit (good enough for starters)
-- calculateEvents :: MyLanguage -> Number -> Number -> Tempo -> Effect (List events...)

-- an immediate next step:

-- newMyLanguage :: Effect MyLanguage -- MyLanguage is a record type probably contain Refs a la Effect.Ref, contains a WebDirt
-- makeBdGo :: MyLanguage -> Effect Unit -- makes the bd sample from WebDirt play
-- play with making WebDirt do different things via differently named PureScript functions called by buttons in the html

-- (LocoMotion has some pretty good examples for this)








  
