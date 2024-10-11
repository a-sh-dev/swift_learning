//
//  AboutMeView.swift
//  SW_SwiftEducation
//
//  Created by Angie SH on 5/9/2024.
//

import SwiftUI

struct AboutMeView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .fontWeight(.light)
                .font(.title2)
            Text("I am Angie")
                .font(.largeTitle)
                .bold()
        }
        .padding()
        
        HStack {
            Image(systemName: "books.vertical")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Image(systemName: "apple.terminal.on.rectangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.mint)
            
            Image(systemName: "carrot")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.pink)
        }
//        .padding(.top, 50)
//        .padding(.leading, 50)
//        .padding(.trailing, 50)
        .frame(width: 300, height: 200)
        
    }
}

#Preview {
    AboutMeView()
}
