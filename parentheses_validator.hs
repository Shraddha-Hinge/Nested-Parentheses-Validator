isBalanced :: String -> (Bool, String)
isBalanced input = let result = checkStack [] input in
                   case result of
                       (True, []) -> (True, "Valid")                                                                     --if stack empty and result true then valid
                       (False, []) -> (False, "Unbalanced: extra closing bracket")                                       --if stack empty but result false then valid
                       (False, stack) -> (False, "Unbalanced: Missing closing brackets for " ++ show stack)              --the stack is not empty meaning mismatched parentheses


checkStack :: [Char] -> String -> (Bool, [Char])        
checkStack stack [] = (null stack, stack)            --input string exhausted null stack checks if stack empty           
checkStack stack (x:xs)                         
    | isOParen x = checkStack (x:stack) xs           --if opening paren then it is pushed in stack
    | isCParen x = if not (null stack) && matches (head stack) x          --if it is closing paren it checks stack is not empty and the head matches x 
                   then checkStack (tail stack) xs                        --if matched pop the top and check for tail
                   else (False, stack)                                    -- else return false
    | otherwise = checkStack stack xs                                     -- to ignore all other characters if it is neither oparen nor cparen


isOParen :: Char -> Bool
isOParen c = c `elem` "([{"


isCParen :: Char -> Bool
isCParen c = c `elem` ")]}"


matches :: Char -> Char -> Bool                                            -- function for matching opening and closing parentheses
matches '(' ')' = True
matches '[' ']' = True
matches '{' '}' = True
matches _ _ = False


main :: IO ()
main = do
    putStrLn "Enter a string :"
    input <- getLine
    if input == "exit"
    then putStrLn "Exiting program."
    else do
        let (valid, message) = isBalanced input
        putStrLn message
        main  

