module Ch9Ex where

import Debug.Trace
import Data.Char

eft :: (Ord a, Enum a) => a -> a -> [a]
eft f t = go f t []
    where go f t r
            | f > t = r
            | otherwise = go f (pred t) (t : r)

splitBySpace :: String -> [String]
splitBySpace s = splitBySeparator s ' '

splitByNewline :: String -> [String]
splitByNewline s = splitBySeparator s '\n'

splitBySeparator :: String -> Char -> [String]
splitBySeparator s sep = go s []
    where go [] res = reverse res
          go s res =
              trace ("calling go' with s = " ++ show s ++ " and res = " ++ show res)
              go (drop 1 . dropWhile isNotSeparator $ s) ((takeWhile isNotSeparator s) : res)
          isNotSeparator = (/= sep)

mySqr = [x^2 | x <- [1..5]]
myCube = [y^3 | y <- [1..5]]

tuples = [(x, y) | x <- mySqr, y <- myCube]
tuplesFiltered = [(x, y) | (x, y) <- tuples, x < 50, y < 50]
tuplesFilteredSize = length tuplesFiltered

filterUpper xs  = [x | x <- xs, isUpper x]

capitalizeFirst (x: xs) = (toUpper x) : xs

capitalizeAll [] = []
capitalizeAll (x : xs) = (toUpper x) : (capitalizeAll xs)
