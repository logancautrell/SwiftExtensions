//
//  MKMapViewExtensions.swift
//  FieldAgent
//
//  Created by Bryan Rahn on 10/3/17.
//  Copyright © 2017 Sentera. All rights reserved.
//

import Foundation
import MapKit

public struct VisibleBoundingCorners {
    public let neCoordinate: CLLocationCoordinate2D
    public let swCoordinate: CLLocationCoordinate2D
}

public extension MKMapView {
    var visibleBoundingCorners: VisibleBoundingCorners {
        let swCoordinate = MKMapPoint(x: visibleMapRect.minX, y: visibleMapRect.maxY).coordinate
        let neCoordinate = MKMapPoint(x: visibleMapRect.maxX, y: visibleMapRect.minY).coordinate
        return VisibleBoundingCorners(neCoordinate: neCoordinate, swCoordinate: swCoordinate)
    }

    var zoomLevel: Double {
        log2(360 * (Double(frame.size.width/256) / region.span.longitudeDelta))
    }
}
