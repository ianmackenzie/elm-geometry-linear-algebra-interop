module OpenSolid.Interop.LinearAlgebra.Vector2d exposing (fromVec2, toVec2)

{-| Conversion functions for `Vector2d`.

@docs toVec2, fromVec2

-}

import Math.Vector2 exposing (Vec2)
import OpenSolid.Geometry.Types exposing (..)


{-| Convert a `Vector2d` to a `Vec2`.

    Vector2d.toVec2 (Vector2d ( 2, 3 ))
    --> vec2 2 3

-}
toVec2 : Vector2d -> Vec2
toVec2 (Vector2d components) =
    Math.Vector2.fromTuple components


{-| Convert a `Vec2` to a `Vector2d`.

    Vector2d.fromVec2 (vec2 2 3)
    --> Vector2d ( 2, 3 )

-}
fromVec2 : Vec2 -> Vector2d
fromVec2 vec =
    Vector2d (Math.Vector2.toTuple vec)
