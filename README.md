# opensolid/linear-algebra-interop

This package supports interop between [`opensolid/geometry`](http://package.elm-lang.org/packages/opensolid/geometry/latest)
and [`elm-community/linear-algebra`](http://package.elm-lang.org/packages/elm-community/linear-algebra/latest).
You can:

  - Convert `opensolid/geometry` `Point2d`, `Point3d`, `Vector2d`, `Vector3d`,
    `Direction2d` and `Direction3d` values to and from `linear-algebra` `Vec2`,
    `Vec3` and `Vec4` values
  - Convert `opensolid/geometry` `Frame3d` values to the equivalent
    `linear-algebra` `Mat4` transformation matrices
  - Transform `opensolid/geometry` `Point3d` and `Vector3d` values using
    `linear-algebra` `Mat4` transformation matrices

This is important for working with WebGL, since the [`elm-community/webgl`](http://package.elm-lang.org/packages/elm-community/webgl/latest)
package requires using `linear-algebra` types when defining meshes and shaders.
This package may also be useful when using other packages that accept or return
`linear-algebra` types, such as [`mkovacs/quaternion`](http://package.elm-lang.org/packages/mkovacs/quaternion/latest).
However, you shouldn't need this package for general use - you should be able to
do most geometric transformations you need (rotations, translations etc.) using
OpenSolid itself.

## Installation

```
elm package install opensolid/linear-algebra-interop
```

## Documentation

[Full API documentation](http://package.elm-lang.org/packages/opensolid/linear-algebra-interop/2.0.0)
is available.

## Usage details

The modules in this package are all designed to be imported using `as` to
'merge' them with the base OpenSolid modules; for example, using

```elm
import OpenSolid.Point3d as Point3d exposing (Point3d)
import OpenSolid.Interop.LinearAlgebra.Point3d as Point3d
```

will let you use functions from both modules as if they were part of one big
`Point3d` module. For example, you could use the `toVec3` function from this
package's `Point3d` module with the `origin` value from the base `Point3d`
module as if they were part of the same module:

```elm
Point3d.toVec3 Point3d.origin
--> Math.Vector3.vec3 0 0 0
```

## Questions? Comments?

Please [open a new issue](https://github.com/opensolid/linear-algebra-interop/issues)
if you run into a bug, if any documentation is missing/incorrect/confusing, or
if there's a new feature that you would find useful. For general questions about
using this package, try:

  - Sending me (@ianmackenzie) a message on the [Elm Slack](http://elmlang.herokuapp.com/) -
    even if you don't have any particular questions right now, just come say
    hello!
  - Posting to the [r/elm](https://reddit.com/r/elm) subreddit
  - Posting to the [elm-discuss](https://groups.google.com/forum/#!forum/elm-discuss)
    Google Group (somewhat less active than Slack and Reddit, but I still follow
    it regularly if you prefer e-mail)
  - Or if you happen to be in the New York area, come on out to the
    [Elm NYC meetup](https://www.meetup.com/Elm-NYC/) =)

You can also find me on Twitter ([@ianemackenzie](https://twitter.com/ianemackenzie)),
where I occasionally post OpenSolid-related stuff like demos or new releases.
Have fun, and don't be afraid to ask for help!
