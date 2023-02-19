//
//  LoggerKit.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

public enum Logger: Loggable {
    
    enum LogLevel {
        
        case verbose, info, debug, warning, error
        case `init`, `deinit`
        
        fileprivate var prefix: String {
            switch self {
            case .verbose: return "💜💜"
            case .info: return "💚💚"
            case .debug: return "💛💛"
            case .warning: return "🧡🧡"
            case .error: return "❤️❤️"
            case .`init`: return "🔸"
            case .`deinit`: return "🔷"
            }
        }
    }
    
    struct Context {
        
        let file: String?
        let line: Int
        
        var description: String {
            guard let file else { return "\(line)" }
            return "\((file as NSString).lastPathComponent): \(line)"
        }
    }
    
    static func handleLog(level: LogLevel, message: Any?..., shouldLogContext: Bool, context: Context) {
        var logComponents: [String] = []
        
        switch level {
        case .`init`, .deinit:
            logComponents.append("\t\t\t \(level.prefix)")
        default:
            logComponents.append(level.prefix)
        }
        
        if shouldLogContext { logComponents.append("\(context.description) -") }
        
        message.forEach { message in
            if let message {
                logComponents.append(String(describing: message))
            }
        }
        
        let fullString = logComponents.joined(separator: " ")
        
        #if DEBUG
        print(fullString)
        #endif
    }
}
