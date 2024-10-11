//
//  User.swift
//  StudentList
//
//  Created by Angie SH on 10/9/2024.
//

import Foundation
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    var username: String
    var password: String
}
