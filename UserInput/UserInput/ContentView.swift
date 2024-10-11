//
//  ContentView.swift
//  UserInput
//
//  Created by Angie SH on 6/9/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    var body: some View {
        VStack {
            Text("Counting:")
                .font(.title)
                .padding()
            
            Text("\(counter)")
                .font(.largeTitle)
                .padding()

            Button("Press me") {
                counter += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
