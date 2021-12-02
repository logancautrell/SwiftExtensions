//
//  UITextFieldExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import UIKit

public extension UITextField {
    var count: Int {
        self.text?.count ?? 0
    }
}
