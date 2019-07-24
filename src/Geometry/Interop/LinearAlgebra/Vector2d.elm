module Geometry.Interop.LinearAlgebra.Vector2d exposing (toVec2, fromVec2)

{-| Conversion functions for `Vector2d`.

@docs toVec2, fromVec2

-}

import Math.Vector2 exposing (Vec2)
import Vector2d exposing (Vector2d)


{-| Convert a `Vector2d` to a `Vec2`.

    Vector2d.toVec2 (Vector2d.fromComponents ( 2, 3 ))
    --> vec2 2 3

-}
toVec2 : Vector2d units coordinates -> Vec2
toVec2 vector =
    let
        { x, y } =
            Vector2d.unwrap vector
    in
    Math.Vector2.vec2 x y


{-| Convert a `Vec2` to a `Vector2d`.

    Vector2d.fromVec2 (vec2 2 3)
    --> Vector2d.fromComponents ( 2, 3 )

-}
fromVec2 : Vec2 -> Vector2d units coordinates
fromVec2 vec =
    Vector2d.unsafe { x = Math.Vector2.getX vec, y = Math.Vector2.getY vec }
