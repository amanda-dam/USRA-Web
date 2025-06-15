module Whatever where

import Prelude
import Effect (Effect)
import WebDirt

launch :: Effect WebDirt
launch = do
  wd <- newWebDirt { sampleMapUrl: "samples/sampleMap.json", sampleFolder: "samples" }
  initializeWebAudio wd
  pure wd

makeSound :: WebDirt -> Effect Unit
makeSound wd = playSample wd { s: "gtr", n: "0"}

