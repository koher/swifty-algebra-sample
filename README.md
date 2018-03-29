# swifty-algebra-sample

## 1. Initialize a package

```
$ mkdir swifty-algebra-sample
$ cd swifty-algebra-sample
$ swift package init --type executable
Creating executable package: swifty-algebra-sample
Creating Package.swift
Creating README.md
Creating .gitignore
Creating Sources/
Creating Sources/swifty-algebra-sample/main.swift
Creating Tests/
```

## 2. Edit `Package.swift`

```diff
 // swift-tools-version:4.0
 // The swift-tools-version declares the minimum version of Swift required to build this package.
 
 import PackageDescription
 
 let package = Package(
     name: "swifty-algebra-sample",
     dependencies: [
         // Dependencies declare other packages that this package depends on.
-        // .package(url: /* package url */, from: "1.0.0"),
+        .package(url: "https://github.com/koher/SwiftyTopology.git", from: "0.1.0"),
     ],
     targets: [
         // Targets are the basic building blocks of a package. A target can define a module or a test suite.
         // Targets can depend on other targets in this package, and on products in packages which this package depends on.
         .target(
             name: "swifty-algebra-sample",
-            dependencies: []),
+            dependencies: ["SwiftyTopology"]),
     ]
 )
```

## 3. Edit `Sources/swifty-algebra-sample/main.swift`

```swift
import SwiftyAlgebra
import SwiftyTopology

// Homology or Cohomology

typealias H = Homology
//typealias H = Cohomology

// Coeff Ring

typealias R = 𝐙
//typealias R = 𝐙₂
//typealias R = 𝐐

// D^3 = Δ^3
do {
    let D3 = SimplicialComplex.ball(dim: 3)
    let h  = H(D3, R.self)
    print(h.detailDescription, "\n")
}
```

## 4. Run the code

```
swift run
```
