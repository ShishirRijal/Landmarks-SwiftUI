//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Shishir Rijal on 07/01/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) {
            landmark in LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
