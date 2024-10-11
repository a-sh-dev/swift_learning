//
//  StudentDetailView.swift
//  StudentList
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct StudentDetailView: View {
    var student: Student
    
    var body: some View {
        ZStack {
            Color(student.favouriteColour)
                .ignoresSafeArea()
            VStack {
                Text(student.photo)
                    .font(.system(size: 100))
                Text("\(student.firstName) \(student.lastName)")
                    .font(.largeTitle)
                    .bold()
                Text(student.nationality)
                    .font(.headline)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    StudentDetailView(student: Student(
        firstName: "Bobo",
        lastName: "Jojo",
        photo: "🥹",
        favouriteColour: Color.brown,
        nationality: "USA"
    ))
}
