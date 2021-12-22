//
//  SetExtensions.swift
//  SwiftExtensions
//
//  Created by Logan Cautrell on 12/16/21.
//  Copyright © 2021 Sentera. All rights reserved.
//

import Combine
import Foundation

public extension Set where Element == AnyCancellable {
    func cancel() {
        forEach {
            $0.cancel()
        }
    }
}
