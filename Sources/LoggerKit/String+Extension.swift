//
//  String+Extension.swift
//  
//
//  Created by Vishweshwaran on 2023-04-18.
//

import Foundation

extension String {
    
    func appendMemoryPointer(_ instance: AnyObject) -> String {
        return "\(self) - <\(Unmanaged.passUnretained(instance).toOpaque())>"
    }
}
