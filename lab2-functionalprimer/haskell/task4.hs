ask :: String -> IO ()
ask prompt = do
  putStrLn prompt 
  line <- getLine
  if line == ""
    then ask (prompt ++ "!") --add ! to message each time 
    else if (line == "quit") then putStrLn ("quitting...")--conditions for quitting
    else do
        putStrLn ("you said: " ++ reverse line)
        ask prompt  


main :: IO ()
main = do
  let prompt = "please say something"
  ask prompt 