//
//  LogKit+Extension.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

protocol Loggable {
    static func info(_ message: Any?..., shouldLogContext: Bool, file: String , function: String, line: Int)
    static func verbose(_ message: Any?..., shouldLogContext: Bool, file: String , function: String, line: Int)
    static func debug(_ message: Any?..., shouldLogContext: Bool, file: String , function: String, line: Int)
    static func warning(_ message: Any?..., shouldLogContext: Bool, file: String , function: String, line: Int)
    static func error(_ message: Any?..., shouldLogContext: Bool, file: String , function: String, line: Int)
}

public extension Log {
    
    static func info(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func verbose(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .verbose, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func debug(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .debug, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .warning, message: message, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .error, message: message, shouldLogContext: shouldLogContext, context: context)
    }
}
