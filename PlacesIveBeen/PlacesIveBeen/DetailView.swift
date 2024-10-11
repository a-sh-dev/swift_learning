//
//  DetailView.swift
//  PlacesIveBeen
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Image(systemName: "ladybug.fill")
            .resizable()
            .scaledToFit()
            .padding(50)
            .foregroundStyle(.pink)
        Text("Attention to Details!")
            .font(.largeTitle)
    }
}

#Preview {
    DetailView()
}
