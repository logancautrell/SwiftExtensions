//
//  FileManagerExtensions.swift
//  SwiftExtensions
//
//  Created by Logan Cautrell on 6/30/21.
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension FileManager {
    func directorySize(_ dir: URL) -> Int? { // in bytes
        if let enumerator = self.enumerator(at: dir, includingPropertiesForKeys: [.totalFileAllocatedSizeKey, .fileAllocatedSizeKey], options: [], errorHandler: { _, error -> Bool in
            print(error)
            return false
        }) {
            var bytes = 0
            for case let url as URL in enumerator {
                bytes += (try? url.directoryTotalAllocatedSize(includingSubfolders: true)) ?? 0
            }
            return bytes
        } else {
            return nil
        }
    }
}
