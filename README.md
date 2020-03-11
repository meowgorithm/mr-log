Mr. Log
=======

A fistfull of Haskell functions for printing log info and, in one case, also
exiting with error.

```haskell
import System.IO.MrLog ( printInfo, printWarn, printError, fatal )

main :: IO ()
main = do

    -- Prints:
    -- [INFO] hello!
    printInfo "hello!"

    -- Prints:
    -- [WARN] uh oh
    printInfo "uh oh"

    -- Prints:
    -- [ERROR] oh no
    printInfo "oh no"

    -- Prints:
    -- [FATAL] something went very wrong!
    -- ...and exits
    fatal "something went very wrong!"
```

## Author

[Christian Rocha](https://github.com/meowgorithm)

## License

MIT
