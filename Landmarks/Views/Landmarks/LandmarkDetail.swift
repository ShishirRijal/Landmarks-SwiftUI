//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Shishir Rijal on 07/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
      var landmark: Landmark


      var landmarkIndex: Int {
          modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
      }

    
    
    var body: some View {
        @Bindable var modelData = modelData
        
        NavigationView {
            ScrollView {
     
                MapView(coordinate:  landmark.locationCoordinate).frame(height: 300)
                
                CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
                
            
                VStack(alignment: .leading) {
                    HStack {
                               Text(landmark.name)
                                   .font(.title)
                               FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                           }
                    
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
    let modelData = ModelData()
      return LandmarkDetail(landmark: modelData.landmarks[0])
          .environment(modelData)
}
