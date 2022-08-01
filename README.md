# LogKit
A logger for Xcode.

## Motivation
LogKit is designed to be a simple and universal logging library with support for multiple Xcode projects. LogKit will have different types of log level.

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

## 📦 Installation

### Swift Package Manager

### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler.

Add this Swift package in Xcode using its Github repository url. (File > Swift Packages > Add Package Dependency...)

Add this URL https://github.com/VishwaiOSDev/LogKit.git and select **Add Package**.

After adding it select LogKit.

### 🚀  How to use

LogKit makes your life easier

Firstly, import the LogKit

```swift
import LogKit
```

For logging,

```swift
Log.verbose("Example of verbose log.")
Log.info("Something went wrong")
Log.debug("Debug mode enabled")
Log.warning("Warning, duplication warning.")
Log.error("Error, data didn't fetch properly.")
```

LogKit will provide clean information for you. Output for above code as follows:

```
[VERBOSE ✏️] Example of verbose log. → LogKitTests.swift:7 testVerboseLog()
[INFO ℹ️] Something went wrong. → LogKitTests.swift:12 testInfoLog()
[DEBUG 📦] Debug mode enabled → LogKitTests.swift:17 testDebugLog()
[WARN ⚠️] Warning, duplication warning. → LogKitTests.swift:22 testWarningLog()
[ALERT ❌] Error, data didn't fetch properly. → LogKitTests.swift:27 testErrorLog()
```
# License
LogKit is released under the MIT license.

```
MIT License

Copyright (c) 2022 Vishweshwaran

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
