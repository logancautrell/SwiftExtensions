//
//  MKPointOfInterestCategoryExtensions.swift
//  SwiftExtensions
//
//  Created by Bryan Rahn on 4/23/20.
//  Copyright © 2020 Sentera. All rights reserved.
//

import Foundation
import MapKit

@available(iOS 13.0, *)
public extension MKPointOfInterestCategory {
    static let allPOI: [MKPointOfInterestCategory] = [.airport,
                                                      .amusementPark,
                                                      .aquarium,
                                                      .atm,
                                                      .bakery,
                                                      .bank,
                                                      .beach,
                                                      .brewery,
                                                      .cafe,
                                                      .campground,
                                                      .carRental,
                                                      .evCharger,
                                                      .fireStation,
                                                      .fitnessCenter,
                                                      .foodMarket,
                                                      .gasStation,
                                                      .hospital,
                                                      .hotel,
                                                      .laundry,
                                                      .library,
                                                      .marina,
                                                      .movieTheater,
                                                      .museum,
                                                      .nationalPark,
                                                      .nightlife,
                                                      .park,
                                                      .parking,
                                                      .pharmacy,
                                                      .police,
                                                      .postOffice,
                                                      .publicTransport,
                                                      .restaurant,
                                                      .restroom,
                                                      .school,
                                                      .stadium,
                                                      .store,
                                                      .theater,
                                                      .university,
                                                      .winery,
                                                      .zoo]
}
