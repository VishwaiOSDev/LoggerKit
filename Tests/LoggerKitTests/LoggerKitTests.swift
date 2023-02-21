import XCTest
@testable import LoggerKit

final class LogKitTests: XCTestCase {
    
    struct Logger: Loggable {
        static var logTag: String = "LoggerKitTests"
        static var logConfig: LoggerKit.LoggerConfig = .init(enable: true)
    }
    
    func testInitLog() {
        Logger.initLifeCycle("LogKitTest Init", for: self)
    }
    
    func testVerboseLog() {
        Logger.verbose("Example of verbose log.")
    }
    
    func testInfoLog() {
        Logger.info("Something went wrong.")
    }
    
    func testDebugLog() {
        Logger.debug("Debug Mode")
    }
    
    func testWarningLog() {
        Logger.warning("Warning, duplication warning.")
    }
    
    func testErrorLog() {
        Logger.error("Error, data didn't fetch properly.")
    }
    
    func testWithVariables() {
        let intTest: Int = 01
        let floatTest: Float = 30.01
        let doubleTest: Double = 30.0001
        let stringTest: String = "StringTest"
        
        Logger.error(intTest)
        Logger.info(floatTest)
        Logger.warning(doubleTest)
        Logger.debug(stringTest)
    }
    
    func testLogWithParameter() {
        let errorMessage: String = "Dependency Error."
        
        Logger.error("Something went wrong! \(errorMessage)")
        Logger.info("Something went wrong! \(errorMessage)")
        Logger.debug("Something went wrong! \(errorMessage)")
        Logger.warning("Something went wrong! \(errorMessage)")
        Logger.verbose("Something went wrong! \(errorMessage)")
    }
    
    func testWithComplexObjects() {
        
        struct LogTest {
            var id: Int
            var message: String
        }
        
        let testObj01 = LogTest(id: 1, message: "Something went wrong")
        let testObj02 = LogTest(id: 2, message: "404, Error")
        let testObj03 = LogTest(id: 3, message: "200 Status Ok!")
        
        Logger.error(testObj01, testObj02, testObj03)
        Logger.info(testObj01, testObj02, testObj03)
        Logger.debug(testObj01, testObj02, testObj03)
        Logger.warning(testObj01, testObj02, testObj03)
        Logger.verbose(testObj01, testObj02, testObj03)
    }
    
    func testDeinitLog() {
        Logger.deinitLifeCycle("LogKitTest deinit", for: self)
    }
}
