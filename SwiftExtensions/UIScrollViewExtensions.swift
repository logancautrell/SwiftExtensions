//
//  UIScrollViewExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import UIKit

public extension UIScrollView {

    func scrollToBottom(animated: Bool = true) {
        setContentOffset(CGPoint(x: 0, y: contentSize.height - bounds.height), animated: animated)
    }
}
