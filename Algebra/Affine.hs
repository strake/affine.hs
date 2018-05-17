module Algebra.Affine where

import Algebra (Group (..))

class Group (Diff a) => Affine a where
    type Diff a
    diff :: a -> a -> Diff a
    offset :: Diff a -> a -> a

infix 6 .-.
(.-.) :: Affine a => a -> a -> Diff a
(.-.) = diff

infixl 6 .+, .-
(.+), (.-) :: Affine a => a -> Diff a -> a
a .+ δ = offset δ a
a .- δ = offset (invert δ) a
