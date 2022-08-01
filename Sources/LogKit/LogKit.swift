//
//  LogKit.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

public enum Log: Loggable {
    
    enum LogLevel {
        case verbose, info, debug, warning, error
        
        fileprivate var prefix: String {
            switch self {
            case .verbose: return "VERBOSE ✏️"
            case .info: return "INFO ℹ️"
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
    
    static func handleLog(
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
