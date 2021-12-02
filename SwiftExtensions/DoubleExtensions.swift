//
//  DoubleExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension Double {
    func degToRad() -> Double {
        self * .pi / 180.0
    }

    func radToDeg() -> Double {
        self * 180.0 / .pi
    }
}

public extension Double {
    func roundToDecimal(_ fractionDigits: Int) -> Double {
        let multiplier = pow(10, Double(fractionDigits))
        return Darwin.round(self * multiplier) / multiplier
    }
}
