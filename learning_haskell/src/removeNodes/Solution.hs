{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

data SinglyLinkedListNode = SinglyLinkedListNode {
    nodeData :: Int,
    next :: SinglyLinkedListNode
} | SinglyLinkedListNodeNil

createSinglyLinkedList :: [Int] -> SinglyLinkedListNode
createSinglyLinkedList [] = SinglyLinkedListNodeNil
createSinglyLinkedList (x:xs) = SinglyLinkedListNode {
    nodeData = x,
    next = createSinglyLinkedList xs
}

instance {-# OVERLAPPING #-} Show (SinglyLinkedListNode, String) where
    show (SinglyLinkedListNodeNil, _) = ""
    show (SinglyLinkedListNode x SinglyLinkedListNodeNil, _) = show x
    show (SinglyLinkedListNode x xs, sep) = show x ++ sep ++ show(xs, sep)


-- Complete the removeNodes function below.

--
-- For your reference:
--
-- SinglyLinkedListNode {
--     nodeData :: Int
--     next :: SinglyLinkedListNode
-- }
--
--
removeNodes listHead x = do
doRemoveNodes nil x 

readMultipleLinesAsStringArray :: Int -> IO [String]
readMultipleLinesAsStringArray 0 = return []
readMultipleLinesAsStringArray n = do
    line <- getLine
    rest <- readMultipleLinesAsStringArray(n - 1)
    return (line : rest)

main :: IO()
main = do
    stdout <- getEnv "OUTPUT_PATH"
    fptr <- openFile stdout WriteMode

    listHeadTempCount <- readLn :: IO Int

    listHeadTempTemp <- readMultipleLinesAsStringArray listHeadTempCount
    let listHeadTemp = Data.List.map (read :: String -> Int) listHeadTempTemp

    let listHead = createSinglyLinkedList listHeadTemp

    x <- readLn :: IO Int

    let res = removeNodes listHead x

    hPutStrLn fptr $ show(res, "\n")

    hFlush fptr
    hClose fptr