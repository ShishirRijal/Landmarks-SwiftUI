//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Shishir Rijal on 07/01/2024.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView().frame(height: 300)
            
            CircleImage().offset(y: -130).padding(.bottom, -130)
            
        
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title)
                
                HStack {
                    Text("Joshua Tree National Park").font(.subheadline)
                    Spacer()
                    Text("California").font(.subheadline)
                }
                Divider()


                              Text("About Turtle Rock")
                                  .font(.title2)
                
                
                              Text("""
Turtle Rock is a rock formation in Joshua Tree National Park, California.
    This massive formation is located across from the parking lot from the entrance into Real Hidden Valley area in Joshua Tree National Park. The northwest face of Turtle Rock is several hundred feet long and works like a massive wall protecting a pleasant picnic area with trees, benches, and even bathrooms. On any weekend during the climbing season, you may see several climbing classes in progress under the trees and around many boulders strewn on the base of the northwest face. You will also run into families picnicking and children scrambling on smaller low angle rocks.

Turtle Rock, being the most prominent rock formation in this area, attracts many tour buses and tourists. The rock practically covers the entire southern parameter of the parking lot giving the area a sense of being enclosed and protected. You may find yourself being invited to special events held in the parking lot such as religious ceremonies or star gazing parties. Amateur and professional astronomers bring their telescopes and invite the public to observe deep sky objects such as galaxies and globular clusters.
""")
            }.padding(.all)
            Spacer()
        }
      
       
    
    }
}

#Preview {
    LandmarkDetail()
}
