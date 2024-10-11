//
//  ContentView.swift
//  Dictionaries
//
//  Created by Angie SH on 10/9/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var options = [String]()
    @State private var correctAnswer = ""
    @State private var feedbackMessage = ""
    @State private var isCountryNameShown = false
    
    var successMessage = "🎉 Woohoo!"
    
    func setNewQuestion() {
        // Dictionaries have to be converted into Array
        let allCountries = Array(countries.keys)
        options = Array(allCountries.shuffled().prefix(3))
        correctAnswer = options.randomElement() ?? "🌏"
        feedbackMessage = ""
    }
    
    func flagTapped(tapped: String) {
        if tapped == correctAnswer {
            feedbackMessage = successMessage
        } else {
            feedbackMessage = "💩 Booooo!"
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            setNewQuestion()
            isCountryNameShown = false
        }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            VStack {
                Text("Guess the flag")
                    .font(.largeTitle)
                    .fontWeight(.black)
                Text("Tap the flag for:")
                Text(correctAnswer)
                    .font(.title)
//                    .fontWeight(.bold)
                    .padding()
                
                ForEach(options, id: \.self) { country in
                    Button {
                        flagTapped(tapped: country)
                        isCountryNameShown = true
                    } label: {
                        Text(countries[country] ?? "Not found")
                            .font(.system(size: 80))
                        if isCountryNameShown {
                            Text(country)
                                .foregroundStyle(.black)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(5)
                }
                Text(feedbackMessage)
                    .frame(height: 15)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(feedbackMessage == successMessage ? .green : .red)
                    .padding()
            }
            .onAppear {
                setNewQuestion()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
