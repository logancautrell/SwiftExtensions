//
//  URLExtensions.swift
//  SwiftExtensions
//
//  Created by Logan Cautrell on 6/2/21.
//  Copyright © 2021 Sentera. All rights reserved.
//

import Foundation

public extension URL {
    func accessSecurityScopedResource(work: () -> Bool) -> Bool {
        let isSecurityScoped = startAccessingSecurityScopedResource()
        defer {
            if isSecurityScoped {
                stopAccessingSecurityScopedResource()
            }
        }
        return work()
    }
}

public extension URL {
    func isDirectoryAndReachable() throws -> Bool {
        guard try resourceValues(forKeys: [.isDirectoryKey]).isDirectory == true else {
            return false
        }
        return try checkResourceIsReachable()
    }

    func directoryTotalAllocatedSize(includingSubfolders: Bool = false) throws -> Int? {
        guard try isDirectoryAndReachable() else {
            return nil
        }
        if includingSubfolders {
            guard
                let urls = FileManager.default.enumerator(at: self, includingPropertiesForKeys: nil)?.allObjects as? [URL] else { return nil }
            return try urls.lazy.reduce(0) {
                    (try $1.resourceValues(forKeys: [.totalFileAllocatedSizeKey]).totalFileAllocatedSize ?? 0) + $0
            }
        }
        return try FileManager.default.contentsOfDirectory(at: self, includingPropertiesForKeys: nil).lazy.reduce(0) {
                 (try $1.resourceValues(forKeys: [.totalFileAllocatedSizeKey])
                    .totalFileAllocatedSize ?? 0) + $0
        }
    }
}
