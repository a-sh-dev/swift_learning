//
//  PlacesIveBeenView.swift
//  AboutMe
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct PlacesIveBeenView: View {
    var placeName: String
    
    var body: some View {
        Text(placeName)
            .font(.largeTitle)
    }
}

#Preview {
    PlacesIveBeenView(placeName: "Gotham City")
}
