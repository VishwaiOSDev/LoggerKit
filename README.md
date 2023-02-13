![LoggerKit](https://user-images.githubusercontent.com/71421776/218493453-10d2d9c3-13bb-4601-a8b3-f3b6204e3e50.png)

# LoggerKit

LoggerKit is a simple, lightweight logging framework for Swift that provides an easy-to-use API for logging messages in Swift projects. It is designed to be fast, efficient, and easy to set up, allowing developers to get up and running quickly. The framework is highly customizable, with several options for controlling the verbosity and formatting of log messages. Whether you're developing a small utility app or a complex enterprise-level system, LoggerKit is a great choice for adding robust logging capabilities to your Swift projects.

## Motivation

LoggerKit is designed to be a simple and universal logging library with support for multiple Xcode projects. LoggerKit will have different types of log level.

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
 - Initialize (init)
 - Teardown (deinit)

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
