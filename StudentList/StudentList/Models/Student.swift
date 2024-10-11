//
//  Student.swift
//  StudentList
//
//  Created by Angie SH on 9/9/2024.
//

import Foundation
import SwiftUI

struct Student: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var photo: String
    var favouriteColour: Color
    var nationality: String
}

struct Skill: Identifiable {
    let id = UUID()
    var name: String
    var icon: String
}

struct Career: Identifiable {
    let id = UUID()
    var name: String
    var banner: String
    var avatar: String?
    var storyName: String
    var story: String
    var drawing: String
    var skills: [Skill]
}
