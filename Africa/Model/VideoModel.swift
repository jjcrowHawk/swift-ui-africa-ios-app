//
//  VideoModel.swift
//  Africa
//
//  Created by Macbook Pro on 2/15/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
