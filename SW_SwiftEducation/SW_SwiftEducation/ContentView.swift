//
//  ContentView.swift
//  SW_SwiftEducation
//
//  Created by Angie SH on 5/9/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("Yahooo!")
                .font(.largeTitle)
                .bold()
            
            
        }
        .padding()
        
        VStack {
            Text("This is Swift")
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    ContentView()
}
