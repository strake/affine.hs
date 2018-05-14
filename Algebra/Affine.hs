module Algebra.Affine where

import Algebra (Group (..))

class Group (Diff a) => Affine a where
    type Diff a
    diff :: a -> a -> Diff a
    offset :: Diff a -> a -> a
