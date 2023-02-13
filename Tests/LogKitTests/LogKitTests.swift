import XCTest
@testable import LogKit

final class LogKitTests: XCTestCase {
    
    func testInitLog() {
        Log.initialize("LogKitTest Init")
    }
    
    func testVerboseLog() {
        Log.verbose("Example of verbose log.")
    }
    
    func testInfoLog() {
        Log.info("Something went wrong.")
    }
    
    func testDebugLog() {
        Log.debug("Debug mode enabled")
    }
    
    func testWarningLog() {
        Log.warning("Warning, duplication warning.")
    }
    
    func testErrorLog() {
        Log.error("Error, data didn't fetch properly.")
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
    
    func testLogWithoutParameter() {
        Log.error()
        Log.info()
        Log.debug()
        Log.warning()
        Log.verbose()
    }
    
    func testWithComplexObjects() {
        
        struct LogTest {
            var id: Int
            var message: String
        }
        
        let testObj01 = LogTest(id: 1, message: "Something went wrong")
        let testObj02 = LogTest(id: 2, message: "404, Error")
        let testObj03 = LogTest(id: 3, message: "200 Status Ok!")
        
        Log.error(testObj01, testObj02, testObj03)
        Log.info(testObj01, testObj02, testObj03)
        Log.debug(testObj01, testObj02, testObj03)
        Log.warning(testObj01, testObj02, testObj03)
        Log.verbose(testObj01, testObj02, testObj03)
    }
    
    func testDeinitLog() {
        Log.teardown("LogKitTest deinit")
    }
}
