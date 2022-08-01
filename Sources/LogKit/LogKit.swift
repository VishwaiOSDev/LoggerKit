//
//  LogKit.swift
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

enum Log: Loggable {
    
    enum LogLevel {
        case verbose, info, debug, warning, error
        
        fileprivate var prefix: String {
            switch self {
            case .verbose: return "VERBOSE 🎙"
            case .info: return "INFO"
            case .debug: return "DEBUG 📦"
            case .warning: return "WARN ⚠️"
            case .error: return "ALERT ❌"
            }
        }
    }
    
    struct Context {
        let file: String
        let function: String
        let line: Int
        var description: String {
            return "\((file as NSString).lastPathComponent):\(line) \(function)"
        }
    }
    
    static func info(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func verbose(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func debug(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func warning(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    static func error(_ str: StaticString, shouldLogContext: Bool = true, file: String = #file, function: String = #function, line: Int = #line) {
        let context = Context(file: file, function: function, line: line)
        Log.handleLog(level: .info, str: str.description, shouldLogContext: shouldLogContext, context: context)
    }
    
    fileprivate static func handleLog(
        level: LogLevel,
        str: String,
        shouldLogContext: Bool,
        context: Context
    ) {
        let logComponents = ["[\(level.prefix)]", str]
        
        var fullString = logComponents.joined(separator: " ")
        if shouldLogContext {
            fullString += " → \(context.description)"
        }
        
        #if DEBUG
        print(fullString)
        #endif
    }
}
