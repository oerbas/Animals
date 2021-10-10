//
//  LocationModel.swift
//  Animals
//
//  Created by Orhan Erbas on 10.10.2021.
//

import SwiftUI
import MapKit

struct Location: Codable, Identifiable {
    var id: String
    var name: String
    var image: String
    var latitude: Double
    var longitude: Double
    
    // Computed Prop
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
