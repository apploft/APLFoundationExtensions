//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import Foundation

public extension URLRequest {
    
    /// Return a dictionary of all parameter (query and body) of an URLRequest. 
    var parameters: [String: String] {
        var parameters = [String: String]()
        var parameterString = url?.query ?? ""
        
        if let httpBody = httpBody {
            parameterString = [parameterString, String(data: httpBody, encoding: .utf8).valueOrEmpty()].filter({ !$0.isEmpty }).joined(separator: "&")
        }
        
        parameterString.split(separator: "&").forEach { pair in
            let keyValue = pair.split(separator: "=").map { String($0) }
            guard keyValue.count == 2 else { return }
            
            parameters[keyValue[0]] = keyValue[1]
        }
        
        return parameters
    }
    
    /// Determine if two instances of URLRequest are equal.
    /// - Parameter to: the other instance. May be nil
    /// - Returns: true if both instances are equal, false otherwise
    func isEqual(to toURL: URLRequest?) -> Bool {
        guard let toURL = toURL else { return false }
        return (url == toURL.url) && (httpMethod == toURL.httpMethod) && (httpBody == toURL.httpBody) && (httpBodyStream == toURL.httpBodyStream)
    }
    
}
