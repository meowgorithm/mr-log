module System.IO.MrLog ( printInfo, printWarn, printErr, fatal ) where

import Control.Monad ( void )
import System.Exit ( exitFailure )

printInfo :: String -> IO ()
printInfo =
    putStrLn . ("[INFO] " ++)

printWarn :: String -> IO ()
printWarn =
    putStrLn . ("[WARN] " ++)

printErr :: String -> IO ()
printErr =
    putStrLn . ("[ERROR] " ++)

fatal :: String -> IO ()
fatal s =
    putStrLn ("[FATAL] " ++ s) >>
    void exitFailure
