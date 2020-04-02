//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import Foundation

public enum APLError: Int, Error {
    public static var errorDomain: String {
        return "de.apploft"
    }
    
    case fileNotFound = 1000
}

public extension NSError {
    /// custom fileNotFound error
    static var fileNotFound: NSError {
        return NSError(domain: APLError.errorDomain, code: APLError.fileNotFound.rawValue, userInfo: nil)
    }
}

public extension Error {
    /// Assuming this is an instance of NSError return the 'code'
    var code: Int {
        return (self as NSError).code
    }
    
    /// Assuming this is an instance of NSError return the 'domain'
    var domain: String {
        return (self as NSError).domain
    }
}
