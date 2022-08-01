//
//  LogKit+Extension.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

protocol Loggable {
    static func info(_ str: StaticString, shouldLogContext: Bool, file: String , function: String, line: Int)
    static func verbose(_ str: StaticString, shouldLogContext: Bool, file: String , function: String, line: Int)
    static func debug(_ str: StaticString, shouldLogContext: Bool, file: String , function: String, line: Int)
    static func warning(_ str: StaticString, shouldLogContext: Bool, file: String , function: String, line: Int)
    static func error(_ str: StaticString, shouldLogContext: Bool, file: String , function: String, line: Int)
}

public extension Log {
    
    static func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func verbose(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .verbose, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func debug(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .debug, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .warning, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .error, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
}
