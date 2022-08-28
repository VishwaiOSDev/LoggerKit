import XCTest
@testable import LogKit

final class LogKitTests: XCTestCase {
    
    func testVerboseLog() {
        Log.verbose("Example of verbose log.")
        /// ✅ Excepted Result: - [VERBOSE ✏️✏️] Example of verbose log. → LogKitTests.swift:7 testVerboseLog()
    }
    
    func testInfoLog() {
        Log.info("Something went wrong.")
        /// ✅ Excepted Result: - [INFO ℹ️ℹ️] Something went wrong. → LogKitTests.swift:12 testInfoLog()
    }
    
    func testDebugLog() {
        Log.debug("Debug mode enabled")
        /// ✅ Excepted Result: - [DEBUG 🚀🚀] Debug mode enabled → LogKitTests.swift:17 testDebugLog()
    }
    
    func testWarningLog() {
        Log.warning("Warning, duplication warning.")
        /// ✅ Excepted Result: - [WARN ⚠️⚠️] Warning, duplication warning. → LogKitTests.swift:22 testWarningLog()
    }
    
    func testErrorLog() {
        Log.error("Error, data didn't fetch properly.")
        /// ✅ Excepted Result: - [ERROR ❌❌] Error, data didn't fetch properly. → LogKitTests.swift:27 testErrorLog()
    }
    
    func testWithVariables() {
        let intTest: Int = 01
        let floatTest: Float = 30.01
        let doubleTest: Double = 30.0001
        let stringTest: String = "StringTest"
        
        Log.error(intTest)
        Log.info(floatTest)
        Log.warning(doubleTest)
        Log.debug(stringTest)
    }
    
    func testLogWithParameter() {
        let errorMessage: String = "Dependency Error."
        
        Log.error("Something went wrong! \(errorMessage)")
        Log.info("Something went wrong! \(errorMessage)")
        Log.debug("Something went wrong! \(errorMessage)")
        Log.warning("Something went wrong! \(errorMessage)")
        Log.verbose("Something went wrong! \(errorMessage)")
    }
}
