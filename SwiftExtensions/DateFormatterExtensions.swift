//
//  DateFormatterExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
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
