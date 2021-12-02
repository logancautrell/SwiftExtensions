//
//  MKAnnotationViewExtensions.swift
//  SwiftExtensions
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import MapKit

public extension MKAnnotationView {
    static var reuseIdentifier: String {
        String(describing: self)
    }
}
