//
//  Loggable+Extension.swift
//  
//
//  Created by Vishweshwaran on 19/02/23.
//

import Foundation

extension Loggable {
    
    public static var logTag: String {
        return String(describing: self)
    }
    
    public static var logConfig: LoggerKit.LoggerConfig {
        get { return Self.logConfig }
        set { Self.logConfig = newValue }
    }
}
