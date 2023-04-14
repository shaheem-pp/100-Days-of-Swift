//
//  Place.swift
//  Landmarks
//
//  Created by Shaheem PP on 14/04/23.
//

import Foundation

struct Place: Codable, Identifiable {
    var id = UUID()
    let title: String
    let address: String
    let city: String
    let latitude: Double
    let longitude: Double
    let description: String
}

