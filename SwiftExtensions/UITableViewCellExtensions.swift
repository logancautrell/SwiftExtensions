//
//  UITableViewCellExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    static var identifier: String {
        String(describing: self)
    }
}
