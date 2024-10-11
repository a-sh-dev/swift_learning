//
//  DogUIView.swift
//  DogYearCalculator
//
//  Created by Angie SH on 6/9/2024.
//

import SwiftUI

struct DogView: View {
    @State private var age = 0.0
    
    func calculateDogYears(humanAge: Double) -> Int {
        return Int(humanAge * 7)
    }
    
    var body: some View {
        VStack{
            if age < 3 {
                Text("🐶")
                    .font(.system(size: 100))
                    .padding(5)
            } else if age > 16 {
                Text("👻")
                    .font(.system(size: 100))
                    .padding(5)
            } else {
                Text("🦮")
                    .font(.system(size: 100))
                    .padding(5)
            }
            Text("Dog Years Calculator")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .fontDesign(.rounded)
            Slider(value: $age, in: 0...30)
            Text("My age: \(Int(age))")
                .font(.title)
            Text("Doggo's age: \(calculateDogYears(humanAge: age))")
                .font(.title)
        }
        .padding(30)
    }
}

#Preview {
    DogView()
}
