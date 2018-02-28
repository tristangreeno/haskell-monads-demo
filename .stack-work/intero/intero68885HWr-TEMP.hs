module Main where

main :: MaybeT IO ()
main = do
  int <- returnOddInts 3
  print int
  getThenPrintFunction

returnOddInts :: Int -> Maybe Int
returnOddInts num
  | otherwise = Just num

getThenPrintFunction :: IO ()
getThenPrintFunction = do
  putStrLn "Please enter a line to print:"
  userInput <- getLine
  putStrLn userInput
