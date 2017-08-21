module OpenSolid.Interop.LinearAlgebra.Frame3d exposing (toMat4)

{-| Conversion functions for `Frame3d`.

@docs toMat4

-}

import Math.Matrix4 exposing (Mat4)
import OpenSolid.Direction3d as Direction3d
import OpenSolid.Frame3d as Frame3d exposing (Frame3d)
import OpenSolid.Point3d as Point3d


{-| Convert a `Frame3d` to a `Mat4`. The resulting matrix can be thought of in
a couple of ways:

  - It is the transformation matrix that takes the global XYZ frame and
    transforms it to the given frame
  - It is the transformation matrix from local coordinates in the given frame
    to global coordinates

The first bullet implies that something like

    Frame3d.xyz
        |> Frame3d.translateBy displacement
        |> Frame3d.rotateAround axis angle
        |> Frame3d.mirrorAcross plane
        |> Frame3d.toMat4

gives you a transformation matrix that is equivalent to applying the given
displacement, then the given rotation, then the given mirror. The second bullet
means that, for example,

    Point3d.placeIn frame

is equivalent to

    Point3d.transformBy (Frame3d.toMat4 frame)

and

    Point3d.relativeTo frame

is equivalent to

    Point3d.transformBy (Matrix4.inverseOrthonormal (Frame3d.toMat4 frame))

-}
toMat4 : Frame3d -> Mat4
toMat4 frame =
    let
        ( m11, m21, m31 ) =
            Direction3d.components (Frame3d.xDirection frame)

        ( m12, m22, m32 ) =
            Direction3d.components (Frame3d.yDirection frame)

        ( m13, m23, m33 ) =
            Direction3d.components (Frame3d.zDirection frame)

        ( m14, m24, m34 ) =
            Point3d.coordinates (Frame3d.originPoint frame)
    in
    Math.Matrix4.fromRecord
        { m11 = m11
        , m21 = m21
        , m31 = m31
        , m41 = 0
        , m12 = m12
        , m22 = m22
        , m32 = m32
        , m42 = 0
        , m13 = m13
        , m23 = m23
        , m33 = m33
        , m43 = 0
        , m14 = m14
        , m24 = m24
        , m34 = m34
        , m44 = 1
        }
