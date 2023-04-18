![LoggerKit](https://user-images.githubusercontent.com/71421776/218493453-10d2d9c3-13bb-4601-a8b3-f3b6204e3e50.png)

# LoggerKit

LoggerKit is a simple and fast logging framework for Swift that's easy to set up and customize. It's great for small or large projects.

## Motivation

LoggerKit is designed to be a simple and universal logging library with support for multiple Xcode projects.

## Features

 - [x] Easy to use
 - [x] Highly customizable
 - [x] Provides clean information

## Available Log Levels

 - Verbose
 - Info
 - Debug
 - Warning
 - Error
 - initLifeCycle
 - deinitLifeCycle

## 📦 Installation

### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. 

- Add this Swift package in Xcode using its Github repository url. (File > Swift Packages > Add Package Dependency...)
- Add this URL https://github.com/VishwaiOSDev/LoggerKit.git and select **Add Package**
- After adding it select LoggerKit.

### 🚀  How to use

LoggerKit makes your life easier

Firstly, import the LoggerKit

```swift
import LoggerKit
```

For logging,

```swift
LoggerKit.verbose("Example of verbose log.")
LoggerKit.info("Something went wrong")
LoggerKit.debug("Debug mode enabled")
LoggerKit.warning("Warning, duplication warning.")
LoggerKit.error("Error, data didn't fetch properly.")
LoggerKit.initLifeCycle("ViewModel init", for: self)
LoggerKit.deinitLifeCycle("ViewModel deinit", for: self)
```

LoggerKit will provide clean information for you. Output for above code as follows:

```
💜💜 LoggerKitTests.swift: 49 - Something went wrong! Dependency Error.
💚💚 LoggerKitTests.swift: 46 - Something went wrong! Dependency Error.
💛💛 LoggerKitTests.swift: 19 - Debug mode enabled
🧡🧡 LoggerKitTests.swift: 23 - Warning, duplication warning.
❤️❤️ LoggerKitTests.swift: 45 - Something went wrong! Dependency Error.
```
# License
LoggerKit is released under the MIT license.
