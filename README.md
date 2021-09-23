DIContainer
========
[![SwiftLint](https://github.com/pprokopowicz/DIContainer/actions/workflows/tests.yml/badge.svg?branch=develop)](https://github.com/pprokopowicz/DIContainer/actions/workflows/tests.yml)
[![License](https://img.shields.io/github/license/pprokopowicz/DIContainer.svg)](LICENSE.md)
[![Swift Version](https://img.shields.io/badge/Swift-5.1_5.2_5.3_5.4_5.5-orange?style=flat)](https://swift.org/)

DIContainer is a simple, easy to use and lightweight [dependency injection](https://en.wikipedia.org/wiki/Dependency_injection) library written in pure Swift.  
Heavly inspired by [Swinject](https://github.com/Swinject/Swinject).

## Platforms

- iOS 13+
- macOS 10.15+
- tvOS 13+
- watchOS 6+

## Installation

### Swift Package Manager

in `Package.swift` add the following:

```swift
dependencies: [
    ...
    .package(url: "https://github.com/pprokopowicz/DIContainer.git", from: "1.0.0")
]
```

## Usage

First you need to register a dependency:
```swift
let container = Container.shared // You can also initialize your own container
container.register(type: Character.self) { _ in
    Smuggler(name: "Han")
}
```
After registering a dependency you can resolve it from the container:
```swift
let character = container.resolve(Character.self)
print(character.name)
```
Class definitions for the given example:
```swift
protocol Character {
    var name: String { get }
}

struct Smuggler: Character {
    let name: String
}
```
For more detailed example chek out [example project](Example).

## License

MIT license. See the [LICENSE file](LICENSE.md) for details.
