//
//  ButtonView.swift
//  SW_SwiftEducation
//
//  Created by Angie SH on 5/9/2024.
//

import SwiftUI

struct ButtonView: View {
    @State private var message = "I am a programmer"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 300)
                .padding()
            Text(message)
                .font(.largeTitle)
                .bold()
                .padding()
            Button("Press Me") {
                message = "I am learning"
                print(message)
            }
            .buttonStyle(.borderedProminent)
            .tint(.yellow)
            .controlSize(.large)
        }
        
    }
}

#Preview {
    ButtonView()
}
