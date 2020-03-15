{-|
Module      : System.Environment.MrEnv
Description : Simple functins for logging
Copyright   : (c) 2020 Christian Rocha
License     : MIT
Maintainer  : christian@rocha.is
Stability   : experimental
Portability : POSIX

Simple tools for logging and, in one case, also exiting with error.
-}

module System.IO.MrLog (
{-|
    A fistfull of functions for logging and, in one case, exiting with error.
-}
    printInfo, printWarn, printErr, fatal ) where

import Control.Monad ( void )
import System.Exit ( exitFailure )

{-| Prefix [INFO] to a string and print it -}
printInfo :: String -> IO ()
printInfo =
    putStrLn . ("[INFO] " ++)

{-| Prefix [WARN] to a string and print it -}
printWarn :: String -> IO ()
printWarn =
    putStrLn . ("[WARN] " ++)

{-| Prefix [ERROR] to a string and print it -}
printErr :: String -> IO ()
printErr =
    putStrLn . ("[ERROR] " ++)

{-| Prefix [FATAL] to a string and print it, then exit with failure -}
fatal :: String -> IO ()
fatal s =
    putStrLn ("[FATAL] " ++ s) >>
    void exitFailure
