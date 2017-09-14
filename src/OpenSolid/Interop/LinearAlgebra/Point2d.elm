module OpenSolid.Interop.LinearAlgebra.Point2d exposing (fromVec2, toVec2)

{-| Conversion functions for `Point2d`.

@docs toVec2, fromVec2

-}

import Math.Vector2 exposing (Vec2)
import OpenSolid.Point2d as Point2d exposing (Point2d)


{-| Convert a `Point2d` to a `Vec2`.

    Point2d.toVec2 (Point2d.fromCoordinates ( 2, 3 ))
    --> vec2 2 3

-}
toVec2 : Point2d -> Vec2
toVec2 point =
    Math.Vector2.fromTuple (Point2d.coordinates point)


{-| Convert a `Vec2` to a `Point2d`.

    Point2d.fromVec2 (vec2 2 3)
    --> Point2d.fromCoordinates ( 2, 3 )

-}
fromVec2 : Vec2 -> Point2d
fromVec2 vec =
    Point2d.fromCoordinates (Math.Vector2.toTuple vec)
