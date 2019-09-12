module Geometry.Interop.LinearAlgebra.Point2d exposing (toVec2, fromVec2)

{-| Conversion functions for `Point2d`.

@docs toVec2, fromVec2

-}

import Math.Vector2 exposing (Vec2)
import Point2d exposing (Point2d)


{-| Convert a `Point2d` to a `Vec2`.

    Point2d.toVec2 (Point2d.fromCoordinates ( 2, 3 ))
    --> vec2 2 3

-}
toVec2 : Point2d units coordinates -> Vec2
toVec2 point =
    let
        { x, y } =
            Point2d.unwrap point
    in
    Math.Vector2.vec2 x y


{-| Convert a `Vec2` to a `Point2d`.

    Point2d.fromVec2 (vec2 2 3)
    --> Point2d.fromCoordinates ( 2, 3 )

-}
fromVec2 : Vec2 -> Point2d units coordinates
fromVec2 vec =
    Point2d.unsafe { x = Math.Vector2.getX vec, y = Math.Vector2.getY vec }
