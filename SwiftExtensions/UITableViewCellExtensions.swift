//
//  UITableViewCellExtensions.swift
//  FieldAgent
//
//  Created by Logan Cautrell on 4/24/19.
//  Copyright © 2019 Sentera. All rights reserved.
//

import Foundation

public extension UITableViewCell {
    static var identifier: String {
        String(describing: self)
    }
}
