module Main where

main :: IO ()
main = do
  let maybeInt = returnOddInts 3
  print maybeInt
  getThenPrintFunction

-- monads like IO or Maybe enable certain side-effecting behavior
returnOddInts :: Int -> Maybe Int
returnOddInts num
  | even num = Nothing
  | otherwise = Just num

getThenPrintFunction :: IO ()
getThenPrintFunction = do
  putStrLn "Please enter a line to print:"
  userInput <- getLine
  putStrLn userInput
