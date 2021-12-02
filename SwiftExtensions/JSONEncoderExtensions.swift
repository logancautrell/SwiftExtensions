//
//  JSONEncoderExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension JSONEncoder {
    static func encoderWithIsoDateEncoding() -> JSONEncoder {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        return encoder
    }
}
