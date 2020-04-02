//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import Foundation

public extension String {
    /// Create a new string by replacing certain regex patterns with another string.
    /// - Parameter pattern: the regex pattern to replace
    /// - Parameter replaceWith: the replacement string
    /// - Returns: a string with the specified pattern matches replaced
    func removeRegexMatches(pattern: String, replaceWith: String = "") -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
            let range = NSRange(location: 0, length: self.count) 
            return regex.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: replaceWith)
        } catch {
            return self
        }
    }
    
    /// Determine the capture groups for a given regex.
    /// - Parameter regex: the regular expression
    /// - Returns: an array of the capture groups corresponding to the regex            
    func capturedGroups(for regex: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let nsString = self as NSString
            let results = regex.matches(in: self, range: NSRange(location: 0, length: nsString.length))
            var resultsFinal = [String]()
            for result in results {
                for index in 1 ..< result.numberOfRanges {
                    resultsFinal.append(nsString.substring(with: result.range(at: index)))
                }
            }
            return resultsFinal
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
}
