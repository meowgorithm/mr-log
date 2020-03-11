Mr. Log
=======

A fistfull of Haskell functions for printing log info and, in one case, also
exiting with error.

```haskell
import System.IO.MrLog ( printInfo, printWarn, printErr, fatal )

main :: IO ()
main = do

    -- Prints:
    -- [INFO] hello!
    printInfo "hello!"

    -- Prints:
    -- [WARN] uh oh
    printWarn "uh oh"

    -- Prints:
    -- [ERROR] oh no
    printErr "oh no"

    -- Prints:
    -- [FATAL] something went very wrong!
    -- ...and exits
    fatal "something went very wrong!"
```

## Author

[Christian Rocha](https://github.com/meowgorithm)

## License

MIT
