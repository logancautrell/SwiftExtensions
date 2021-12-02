//
//  CIImageExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import CoreImage

public extension CIImage {
    func cgImage() -> CGImage? {
        CIContext.shared.createCGImage(self, from: extent)
    }
}
