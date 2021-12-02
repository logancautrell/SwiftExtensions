//
//  CIFilterExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import CoreImage

public extension CIFilter {

    static func filter(named name: String) -> CIFilter {
        guard let filter = CIFilter(name: name) else {
            assertionFailure("unable to build \(name)")
            return CIFilter()
        }
        return filter
    }
}
