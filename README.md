![LoggerKit](https://user-images.githubusercontent.com/71421776/182191029-877eeb22-282c-482a-8d89-6118dd150dbb.jpg)

# LoggerKit
A logger for Xcode

## Motivation
LoggerKit is designed to be a simple and universal logging library with support for multiple Xcode projects. LogKit will have different types of log level.

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

Add this Swift package in Xcode using its Github repository url. (File > Swift Packages > Add Package Dependency...)

Add this URL https://github.com/VishwaiOSDev/LoggerKit.git and select **Add Package**.

After adding it select LogKit.

<img width="648" alt="Screenshot 2022-08-01 at 9 14 56 PM" src="https://user-images.githubusercontent.com/71421776/182190544-0dbdd51a-df00-44f2-9064-cd33e44d192b.png">

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
