//
//  CGRectExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import CoreGraphics

// MARK: - Static

public extension CGRect {
    static func rectFrom(p1: CGPoint, p2: CGPoint) -> CGRect {
        CGRect(x: min(p1.x, p2.x),
               y: min(p1.y, p2.y),
               width: abs(p1.x - p2.x),
               height: abs(p1.y - p2.y)).integral
    }
}

// MARK: - Instance

public extension CGRect {
    func distanceFromCenter(to point: CGPoint) -> CGFloat {
        let xDist = midX - point.x
        let yDist = midY - point.y
        return CGFloat(sqrt(xDist * xDist + yDist * yDist))
    }
}
