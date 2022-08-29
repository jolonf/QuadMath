# QuadMath

Provides QuadMath and Float128 support for Swift via GCC's quadmath library using `qfloat_bridge`.

# Overview

The motivation for this library is the lack of extended precision support (either Float80 or Float128) in Swift on macOS ARM. The lack of Float80 support is due to no hardware support in ARM, whereas the lack of Float128 support is due to no Float128 support in clang.

The QuadMath library provides Float128 support via GCC's quadmath library, however so as not to conflict with potential support for a `Float128` Swift type in the future, the QuadMath library defines the datatype `QFloat` which maps directly to GCC's `__float128` type.

Note that this package is not well tested, and neither is the qfloat_bridge library that it depends on. If you are using this for critical work please thoroughly test any functions you use.

# Usage

Add the QuadMath package as a dependency.

You will also need to create a `Lib` subdirectory in the root directory of your project and include the libqfloat_bridge.a library there. The [qfloat_bridge](https://github.com/jolonf/qfloat_bridge) library must be built from source, follow the project's instructions.

See the QuadMathTester project for an example of how to use the project.

See the `Sources/QuadMath/QuadMath.swift` file for a list of functions and operators that can be used.

An example usage:

```swift
import QuadMath

let a = QFloat(1.0)
let b = QFloat(3.0)

let d = Double(a + b)

print("result = \(d)")
```

# Notes

The path to the `libqfloat_bridge.a` static library is specified in this package's `Package.swift` file using `linkerSettings` `unsafeFlags`. However, the path appears to be relative to the application using the QuadMath package, not the QuadMath package itself. I haven't been able to work out how to make the path relative to this package and include the static library in this package.

