//
//  ByteCountFormatterExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension ByteCountFormatter {
    static func fileSize(for byteCount: Int64) -> String {
        let  byteCountFormatter =  ByteCountFormatter()
        byteCountFormatter.countStyle = .file

        if byteCount < 1000000 {
            byteCountFormatter.allowedUnits = .useKB
        } else if byteCount < 1000000000 {
            byteCountFormatter.allowedUnits = .useMB
        } else {
            byteCountFormatter.allowedUnits = .useGB
        }

        return byteCountFormatter.string(fromByteCount: byteCount)
    }

    static func stringForGigabytes(gigabytes: UInt) -> String {
        ByteCountFormatter().string(fromByteCount: Int64(gigabytes * UInt(1e+9)))
    }
}
