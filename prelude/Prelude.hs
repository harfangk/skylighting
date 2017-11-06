{-# LANGUAGE CPP            #-}
{-# LANGUAGE PackageImports #-}

-- This custom Prelude emulates the API of the prelude
-- with base 4.8.

module Prelude
(
  module P
#if MIN_VERSION_base(4,8,0)
#else
, Monoid(..)
, Applicative(..)
, (<$>)
, (<$)
#endif
)
where

#if MIN_VERSION_base(4,8,0)
import "base" Prelude as P
#else
import Control.Applicative
import Data.Monoid
import "base" Prelude as P
#endif
