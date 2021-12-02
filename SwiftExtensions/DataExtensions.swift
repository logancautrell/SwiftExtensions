//
//  DataExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension Data {
    func hexDescription() -> String {
        reduce("") { $0 + String(format: "%02x", $1) }
    }
    
    func stringFromUTF8() -> String? {
        String(bytes: self, encoding: .utf8)
    }

    static func contents(ofPath path: String) -> Data? {
        let filehandle = FileHandle(forReadingAtPath: path)
        guard let data = try? filehandle?.safeReadToEnd() else {
            return nil
        }
        return data
    }
}
