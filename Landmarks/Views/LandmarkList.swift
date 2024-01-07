//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Shishir Rijal on 07/01/2024.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        } detail: {
            Text("Select the landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
