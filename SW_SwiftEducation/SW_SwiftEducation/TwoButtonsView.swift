//
//  TwoButtonsView.swift
//  SW_SwiftEducation
//
//  Created by Angie SH on 5/9/2024.
//

import SwiftUI

struct TwoButtonsView: View {
    @State private var message = "You are..."
    var body: some View {
        VStack {
            Image(systemName: "teddybear")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.pink)
                .frame(width: 300)
                .padding()
//                .border(.blue, width: 1)
            Text(message)
                .font(.largeTitle)
                .bold()
                .padding()
        }
        
        HStack {
            Button("Awesome") {
                message = "You are awesome!"
            }
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.black)
            .tint(.orange)
            .controlSize(.large)
            
            Button("Great") {
                message = "You are great!"
            }
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.black)
            .tint(.yellow)
            .controlSize(.large)
        }
    }
}

#Preview {
    TwoButtonsView()
}
