//
//  CircleImage.swift
//  Landmarks
//
//  Created by Shishir Rijal on 05/01/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
       image.clipShape(Circle()).overlay{
            Circle().stroke(.white, lineWidth: 3)
        }.shadow(radius: 12)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
