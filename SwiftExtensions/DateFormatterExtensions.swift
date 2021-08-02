//
//  DateFormatterExtensions.swift
//  FieldAgent
//
//  Created by Bryan Rahn on 12/6/17.
//  Copyright © 2017 Sentera. All rights reserved.
//

import Foundation

public extension DateFormatter {

    // MARK: - Helper functions
    static func dateFormatterCurrentLocale(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> DateFormatter {
        let formatter = DateFormatter.gregorianCurrentLocaleDateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter
    }
    
    static func formatterForFormatWithCurrentLocale(format: String) -> DateFormatter {
        let formatter = DateFormatter.gregorianCurrentLocaleDateFormatter()
        formatter.dateFormat = format
        return formatter
    }
    
    static func gregorianCurrentLocaleDateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.locale = Locale.current
        return formatter
    }

    static func iso8601DateFormatterWithFractionalSeconds() -> ISO8601DateFormatter {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions.update(with: .withFractionalSeconds)
        formatter.timeZone = TimeZone.current
        return formatter
    }
}

// MARK: - US Locale formatters

public extension DateFormatter {
    static let mediumDateShortTimeDateFormatter: DateFormatter = .dateFormatterUSLocale(dateStyle: .medium, timeStyle: .short)
    static let noDateLongTimeDateFormatter: DateFormatter = .dateFormatterUSLocale(dateStyle: .none, timeStyle: .long)

    static func dateFormatterUSLocale(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> DateFormatter {
        let formatter = DateFormatter.gregorianUSLocaleDateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter
    }
    
    static func gregorianUSLocaleDateFormatter() -> DateFormatter {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.locale = Locale(identifier: "en_US")
        return formatter
    }
}
