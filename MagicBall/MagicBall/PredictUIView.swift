//
//  PredictUIView.swift
//  MagicBall
//
//  Created by Angie SH on 6/9/2024.
//

import SwiftUI

struct PredictUIView: View {
    @State private var predictions = "?"
    
    let optionsArray = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]
    
    var body: some View {
        VStack {
            ZStack {
                Image("predict-ball-image")
                    .resizable()
                    .scaledToFit()
                
                Circle()
                    .frame(width: 180)
                    .foregroundColor(.mint)
                    .offset(y: -10)
                    .shadow(color: .mint, radius: 15)
                
                Text(predictions)
                    .font(.title)
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)
                    .frame(width: 180, height: 200)
                    .padding(-15)
                    .offset(y: -10)
                    .animation(.default, value: predictions)
            }
            
            Button("Predict") {
                predictions = optionsArray.randomElement() ?? ""
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.extraLarge)
            .offset(y: 100)
            .tint(.black)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(.white)
    }
}

#Preview {
    PredictUIView()
}
