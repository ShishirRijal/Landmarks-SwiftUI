//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Shishir Rijal on 07/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark
    
    var body: some View {
        
        NavigationView {
            ScrollView {
     
                MapView(coordinate:  landmark.locationCoordinate).frame(height: 300)
                
                CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
                
            
                VStack(alignment: .leading) {
                    Text(landmark.name).font(.title)
                    
                    HStack {
                        Text(landmark.park).font(.subheadline)
                        Spacer()
                        Text(landmark.state).font(.subheadline)
                    }
                    Divider()


                    Text("About \(landmark.name)")
                                      .font(.title2)
                    
                    
                    Text(landmark.description)
                }.padding(.all)
              
            }.navigationTitle("Landmarks")
                .navigationBarTitleDisplayMode(.inline)
            
        }
      
    }
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
