//
//  VideoModel.swift
//  Animals
//
//  Created by Orhan Erbas on 10.10.2021.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Prop
    var thumbnail: String {
        "video-\(id)"
    }
}
