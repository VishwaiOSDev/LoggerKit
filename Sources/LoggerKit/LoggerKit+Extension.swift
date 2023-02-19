//
//  LogKit+Extension.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

protocol Loggable {
    static func info(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func verbose(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func debug(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func warning(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func error(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func initialize(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
    static func teardown(_ message: Any?..., shouldLogContext: Bool, file: String, line: Int)
}

public extension Logger {
    
    static func info(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .info, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func verbose(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .verbose, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func debug(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .debug, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .warning, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .error, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func initialize(_ message: Any?..., shouldLogContext: Bool = false, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .`init`, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func teardown(_ message: Any?..., shouldLogContext: Bool = false, file: String = #file, line: Int = #line) {
        let context = Context(file: file, line: line)
        Logger.handleLog(level: .deinit, message: message, shouldLogContext: shouldLogContext, context: context)
    }
}
