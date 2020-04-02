//
// Created by apploft on 18.12.18.
// Copyright © 2019 apploft GmbH￼￼
// MIT License · http://choosealicense.com/licenses/mit/ 

import Foundation
import UIKit

public extension NSAttributedString {
    /// Substitute the text of an attributed string instance keeping all attributes.
    /// - Parameter substitution: the alternate text
    /// - Returns: a new attributed string with the same attributes but different text
    /// than the original instance
    func substituteText(with substitution: String) -> NSAttributedString {
        let mutableCopy: NSMutableAttributedString = self.mutableCopy() as? NSMutableAttributedString ?? NSMutableAttributedString(string: "")
        
        mutableCopy.replaceCharacters(in: NSRange(location: 0, length: self.length), with: substitution)
        
        return mutableCopy
    }
    
    /// Substitute the color of an attributed string instance keeping all other attributes.
    /// - Parameter substitution: the substitution color
    /// - Returns: a new attributed string with the same attributes except color
    func substituteColor(with substitution: UIColor) -> NSAttributedString {
        guard self.length > 0 else {
            return self
        }
        
        let mutableCopy: NSMutableAttributedString = self.mutableCopy() as? NSMutableAttributedString ?? NSMutableAttributedString(string: "")
        let fullRange = NSRange(location: 0, length: self.length)
        
        mutableCopy.removeAttribute(.foregroundColor, range: fullRange)
        mutableCopy.addAttribute(.foregroundColor, value: substitution, range: fullRange)
        
        return mutableCopy
    }
}
