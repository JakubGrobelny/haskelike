module Utility where

import Linear(V2(..))


v2Max :: Ord a => V2 a -> a
v2Max (V2 a b)
    | a > b     = a
    | otherwise = b

v2 :: (a, a) -> V2 a
v2 = uncurry V2

v2x :: V2 a -> a
v2x (V2 x _ ) = x

v2y :: V2 a -> a
v2y (V2 _ y) = y

unpackV2 :: V2 a -> (a, a)
unpackV2 (V2 x y) = (x, y)

extreme :: (a -> a -> Bool) -> [a] -> a
extreme _ [] = error "extreme: empty list"
extreme _ [a] =  a
extreme (>) (x:xs) = if x > e then x else e
    where
        e = extreme (>) xs

towardsInf :: (RealFrac a, Integral b) => a -> b
towardsInf x = if x < 0.0 then floor x else ceiling x
