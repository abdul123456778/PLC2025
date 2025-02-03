--create inpFunc
inpFunc a b = [a..b] 

--Define applicatorFunc
applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (fromIntegral (sum inpFunc)) / (fromIntegral (length inpFunc))

main = do
    let result = applicatorFunc (inpFunc a b) 'a' --Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))