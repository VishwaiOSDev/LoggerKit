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

public struct LoggerKit {
    
    public enum LogLevel: Int {
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
        
        public init(enable: Bool, severity: LoggerKit.LogLevel = .info) {
            self.enable = enable
            self.severity = severity
        }
        
        func shouldLog(_ level: LoggerKit.LogLevel) -> Bool {
            return level.rawValue >= self.severity.rawValue
        }
    }
}

public extension Loggable {
    
    static func info(_ message: Any..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        handleLog(
            level: .info,
            message: formatLogMessage(message),
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func verbose(_ message: Any..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        handleLog(
            level: .verbose,
            message: formatLogMessage(message),
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func debug(_ message: Any..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        handleLog(
            level: .debug,
            message: formatLogMessage(message),
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func warning(_ message: Any..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        handleLog(
            level: .warning,
            message: formatLogMessage(message),
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func error(_ message: Any..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        handleLog(
            level: .error,
            message: formatLogMessage(message),
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func initLifeCycle(_ message: Any..., for object: AnyObject, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        let logMessage = formatLogMessage(message).appendMemoryPointer(object)
        handleLog(
            level: .`init`,
            message: logMessage,
            shouldLogContext: false,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func deinitLifeCycle(_ message: Any..., for object: AnyObject, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        let logMessage = formatLogMessage(message).appendMemoryPointer(object)
        handleLog(
            level: .deinit,
            message: logMessage,
            shouldLogContext: false,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
}

extension Loggable {
    
    private static func handleLog(
        level: LoggerKit.LogLevel,
        message: String,
        shouldLogContext: Bool,
        context: LoggerKit.Context,
        logTag: String,
        logConfig: LoggerKit.LoggerConfig
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
    
    private static func formatLogMessage(_ message: Any...) -> String {
        message.map { String(describing: $0) }.joined(separator: " ")
    }
}

private extension String {
    
    func appendMemoryPointer(_ instance: AnyObject) -> String {
        return "\(self) - <\(Unmanaged.passUnretained(instance).toOpaque())>"
    }
}
