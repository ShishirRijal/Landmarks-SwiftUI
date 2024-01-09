//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Shishir Rijal on 09/01/2024.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet: Bool
    
    var body: some View {
        Button{
            isSet.toggle()
        } label: {
            Label("Hi", systemImage: isSet ? "star.fill": "star").labelStyle(.iconOnly).foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
