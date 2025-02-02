ask :: String -> Int -> IO ()
ask prompt exclamations = do
  putStrLn (prompt ++ replicate exclamations '!')
  line <- getLine
  if line == "quit"
    then putStrLn "quitting..."
    else if line == ""
    then ask prompt (exclamations + 1)
    else do
        putStrLn ("you said: " ++ reverse line)
        ask prompt 0  -- Reset "!" count after valid input


main :: IO ()
main = do
  let prompt = "please say something"
  ask prompt 0