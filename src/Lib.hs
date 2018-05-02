module Lib
    ( startServer
    ) where

import Data.Proxy 
import Network.Wai
import Network.Wai.Handler.Warp
import Servant
import Servant.Server

type API = Raw

api :: Proxy API
api = Proxy

startServer :: FilePath -> Int -> IO ()
startServer folder port = do
  let warpSettings = setPort port defaultSettings
      app = serve api $ serveDirectoryFileServer folder
  runSettings warpSettings app
