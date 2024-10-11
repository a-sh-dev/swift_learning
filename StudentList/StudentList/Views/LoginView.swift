//
//  LoginView.swift
//  StudentList
//
//  Created by Angie SH on 10/9/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var loginMessage = ""
    
    func authenticate() {
        if username.isEmpty || password.isEmpty {
            loginMessage = "Please enter a username and password"
        } else if username == "Test" && password == "1234" {
            loginMessage = "User is authenticated!"
        } else {
            loginMessage = "Invalid username and password"
        }
    }
    
    var body: some View {
        VStack {
            VStack {
                Text("Login")
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                Text(loginMessage)
                    .foregroundStyle(.red)
                    .padding()
            }
//            .frame(height: 250)
            
            Button("Sign in") {
//                authenticate()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding(30)
    }
}

#Preview {
    LoginView()
}
