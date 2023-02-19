//
//  LoggerKit.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

public protocol Loggable {
    static var logTag: String { get }
    static var logConfig: LoggerKit.LoggerConfig { get set }
}

extension Loggable {
    
    public static var logTag: String {
        return String(describing: self)
    }
    
    public static var logConfig: LoggerKit.LoggerConfig {
        get { return Self.logConfig }
        set { Self.logConfig = newValue }
    }
}

public struct LoggerKit {
    
    enum LogLevel: Int {
        case verbose = 0, info, debug, warning, error
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
            guard let file = file else { return "\(line)" }
            return "\((file as NSString).lastPathComponent): \(line)"
        }
    }
    
    public struct LoggerConfig {
        
        let enable: Bool
        let severity: LoggerKit.LogLevel
        
        init(enable: Bool, severity: LoggerKit.LogLevel = .info) {
            self.enable = enable
            self.severity = severity
        }
        
        func shouldLog(_ level: LoggerKit.LogLevel) -> Bool {
            return level.rawValue >= self.severity.rawValue
        }
    }
    
    static func handleLog(
        level: LogLevel,
        message: String,
        shouldLogContext: Bool,
        context: Context,
        logTag: String,
        logConfig: LoggerConfig
    ) {
        guard logConfig.enable else { return }
        guard logConfig.shouldLog(level) else { return }
        
        var logComponents: [String] = []
        
        let logFormat = "\(level.prefix) [\(logTag)]"
        
        switch level {
        case .`init`, .deinit:
            logComponents.append("\t\t\t \(logFormat):")
        default:
            logComponents.append(logFormat)
        }
        
        if shouldLogContext { logComponents.append("\(context.description) -") }

        logComponents.append(message)

        let fullString = logComponents.joined(separator: " ")
        
        #if DEBUG
        print(fullString)
        #endif
    }
}
