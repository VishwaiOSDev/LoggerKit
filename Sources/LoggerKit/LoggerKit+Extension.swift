//
//  LogKit+Extension.swift
//  
//
//  Created by Vishweshwaran on 01/08/22.
//

import Foundation

public extension Loggable {
    
    static func info(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .info,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func verbose(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .verbose,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func debug(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .debug,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func warning(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .warning,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func error(_ message: Any?..., shouldLogContext: Bool = true, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .error,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func initialize(_ message: Any?..., shouldLogContext: Bool = false, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .`init`,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
    
    static func teardown(_ message: Any?..., shouldLogContext: Bool = false, file: String = #file, line: Int = #line) {
        let context = LoggerKit.Context(file: file, line: line)
        LoggerKit.handleLog(
            level: .deinit,
            message: message,
            shouldLogContext: shouldLogContext,
            context: context,
            logTag: logTag,
            logConfig: logConfig
        )
    }
}
