//
//  NSMutableAttributedStringExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension NSMutableAttributedString {
    func setAsLink(textToFind: String, linkURL: String) -> Bool {
        let foundRange = mutableString.range(of: textToFind)
        if foundRange.location != NSNotFound {
            addAttribute(.link, value: linkURL, range: foundRange)
            return true
        }
        return false
    }

    func setAttributes(attrs: [NSAttributedString.Key: Any]? = nil, string: String) {
        let foundRange = mutableString.range(of: string)
        if let attrs = attrs, foundRange.location != NSNotFound {
            addAttributes(attrs, range: foundRange)
        }
    }
}
