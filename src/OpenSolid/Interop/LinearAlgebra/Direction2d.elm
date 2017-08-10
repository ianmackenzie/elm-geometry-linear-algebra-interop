module OpenSolid.Interop.LinearAlgebra.Direction2d exposing (toVec2)

{-| Conversion functions for `Direction2d`.

@docs toVec2

-}

import Math.Vector2 exposing (Vec2)
import OpenSolid.Geometry.Types exposing (..)


{-| Convert a `Direction2d` to a `Vec2`.

    Direction2d.toVec2 Direction2d.x
    --> vec2 1 0

-}
toVec2 : Direction2d -> Vec2
toVec2 (Direction2d components) =
    Math.Vector2.fromTuple components
