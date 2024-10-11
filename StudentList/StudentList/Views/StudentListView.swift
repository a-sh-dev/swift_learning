//
//  StudentListView.swift
//  StudentList
//
//  Created by Angie SH on 9/9/2024.
//

import SwiftUI

struct StudentListView: View {
    @State private var students = [
        Student(
            firstName: "Elon",
            lastName: "Musk",
            photo: "👹",
            favouriteColour: Color.gray,
            nationality: "USA"),
        Student(
            firstName: "Bluey",
            lastName: "Heeler",
            photo: "🤖",
            favouriteColour: Color.blue,
            nationality: "Australian"),
        Student(
            firstName: "Angie",
            lastName: "SH",
            photo: "🐨",
            favouriteColour: Color.mint,
            nationality: "Australian"),
        Student(
            firstName: "Bobo",
            lastName: "Jojo",
            photo: "🐸",
            favouriteColour: Color.brown,
            nationality: "USA"),
        Student(
            firstName: "Hamtaro",
            lastName: "Tanaka",
            photo: "🐹",
            favouriteColour: Color.orange,
            nationality: "Japan"),
        Student(
            firstName: "Takeshi",
            lastName: "Kaneshiro",
            photo: "🦁",
            favouriteColour: Color.indigo,
            nationality: "Japan")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(students) { student in
                    NavigationLink {
                        StudentDetailView(student: student)
                    } label: {
                        Image(systemName: "swift")
                            .foregroundStyle(student.favouriteColour)
                        Text(student.firstName)
                            .font(.title2)
                    }
                }
            }
            .listStyle(.plain)
            .listRowSpacing(5)
            .navigationTitle("Swifters")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
//                        LoginView()
                        EmptyView()
                    } label: {
                        Image(systemName: "person.circle")
                            .foregroundStyle(.orange)
                    }
                }
            }
        }
    }
}

#Preview {
    StudentListView()
}
