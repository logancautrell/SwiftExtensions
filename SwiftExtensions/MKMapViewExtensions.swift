//
//  MKMapViewExtensions.swift
//  FieldAgent
//
//  Copyright © 2021 Sentera. All rights reserved.
//

import MapKit

public extension MKMapView {
    var zoomLevel: Double {
        log2(360 * (Double(frame.size.width/256) / region.span.longitudeDelta))
    }
}
