//
//  UIButtonExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import UIKit

public extension UIButton {
    // swiftlint:disable override_in_extension
    // Workaround: UIButton intrinsicContentSize does not account for titleEdgeInsets
    override var intrinsicContentSize: CGSize {
        let size = super.intrinsicContentSize
        return CGSize(width: size.width + titleEdgeInsets.left + titleEdgeInsets.right,
                      height: size.height + titleEdgeInsets.top + titleEdgeInsets.bottom)
    }
    // swiftlint:enable override_in_extension
}
