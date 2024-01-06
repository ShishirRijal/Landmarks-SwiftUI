//
//  Landmark.swift
//  Landmarks
//
//  Created by Shishir Rijal on 06/01/2024.
//

import SwiftUI

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
}
