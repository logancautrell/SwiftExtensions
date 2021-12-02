//
//  CGRectExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import CoreGraphics

public extension CGRect {
    func distanceFromCenter(to point: CGPoint) -> CGFloat {
        let xDist = midX - point.x
        let yDist = midY - point.y
        return CGFloat(sqrt(xDist * xDist + yDist * yDist))
    }
}
