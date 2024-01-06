//
//  Landmark.swift
//  Landmarks
//
//  Created by Shishir Rijal on 06/01/2024.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
