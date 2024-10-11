//
//  ContentView.swift
//  PlacesIveBeen
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Details")
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Go to Child")
                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Details")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
