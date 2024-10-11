//
//  ContentView.swift
//  AboutMe
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var places = [
        "Adelaide",
        "Sydney",
        "Perth",
        "Hobart",
        "Gold Coast",
        "Tokyo",
        "Kyoto",
        "Jakarta",
        "Surabaya",
        "Singapore",
        "Lala Land"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(places, id: \.self) { city in
                    NavigationLink {
                        PlacesIveBeenView(placeName: city)
                    } label: {
                            Image(systemName: "mappin")
                                .foregroundStyle(.mint)
                            Text(city)
                    }
                }
//                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            //            .font(.largeTitle)
            //            ZStack {
            //                Color(.mint)
            //                    .ignoresSafeArea()
            //                VStack {
            //                    Image("ash_memoji_coder")
            //                        .resizable()
            //                        .scaledToFit()
            //                        .background(.yellow)
            //                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            //                        .overlay {
            //                            Circle()
            //                                .stroke(lineWidth: 8)
            //                        }
            //                        .padding(50)
            //                    Text("a-sh.")
            //                        .font(.largeTitle)
            //                        .fontDesign(.rounded)
            //                        .bold()
            //                    NavigationLink {
            //                        DetailsView()
            //                    } label: {
            //                        Text("Profile")
            //                    }
            //                    .buttonStyle(.borderedProminent)
            //                    .controlSize(.extraLarge)
            //                }
            //            }
            .navigationTitle("Places")
            //            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
