# APLFoundationExtension

This package provides extensions to commonly used `Foundation` Classes, like `Array` and `Date`.

Everything is written in Swift, documented and tested.

## Table of Contents

- [Overview of Classes and Functionalities](#overviewOfClassesAndFunctionalities)
- [Installation](#installation)
  - [Swift Package](#swiftpackage)
- [Usage](#usage)
- [License](#license)

## Overview of Classes and Functionalities

#### Array Extension

- Remove duplicate elements.
- Safely return element.

#### Date Extension

- Initialize Date with ease based on year, month, day, minute and second.

#### DispatchQueue Extension

- Execute closure associated with a unique token only once and thread safe.

#### Error Extension

- Adds `code` and `domain` properties to 'Error'.

#### NSAttributedString Extension

- Substitute the color of `NSAttributedString` instance keeping all other attributes.
- Substitute the text of `NSAttributedString` instance keeping all other attributes.

#### String Extension

- Initialize `String` with the content of a specified url.
- Replace fulfilled regex patterns of a `String` with another `String`.
- Determine the capture groups for a given regex.

#### URLSession

- Synchronously load data.

## Installation

### [Swift Package](https://github.com/apple/swift-package-manager/blob/master/Documentation/PackageDescription.md#supportedplatform)

Just integrate the APLFoundationExtension via Xcode 11 ([tutorial](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)).

## Usage

After importing `APLFoundationExtension` all extensions and documentation can be accessed the default way.

An example of using the method `subscript(safe: Index)` of the `Array` extension:

```swift
import APLFoundationExtension

let array = ["a", "b"]
array[safe: 100] // returns nil
```

## License

**APLFoundationExtension** is created by apploft on 02.04.2020.
Copyright © 2019 apploft GmbH￼￼
MIT License http://choosealicense.com/licenses/mit/
