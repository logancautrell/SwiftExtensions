//
//  IntExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension Int {
    func ordinal() -> String? {
        NumberFormatter.ordinalFormatter().string(from: NSNumber(value: self))
    }
}
