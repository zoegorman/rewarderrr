//
//  ContentView.swift
//  Rewarder
//
//  Created by Zoe Gorman on 7/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var Username = ""
    @State private var Password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    func authenticateUser(username: String, password: String) -> Bool {
        
        if username.lowercased() == "zoegorman" {
            wrongUsername = 0
            if password.lowercased() == "abc" {
                wrongPassword = 0
                return true
            } else {
                wrongPassword = 2
                return false
            }
        } else {
            wrongUsername = 2
            /* Text("There is an error in your username or password @\(Username)"), isActive: $showingLoginScreen) {*/
            return false
        }
    }
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.4)
                    .foregroundColor(.white)
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $Username)
                        .padding()
                        .frame (width: 300, height: 50)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    SecureField("Password", text: $Password)
                        .padding()
                        .frame (width: 300, height: 50)
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        //authenticateUser(username: Username, password: Password)
                    NavigationLink("Log in") { PickYourAvatarScreen() }
                        }
                    }
                }
            }
           // .navigationBarHidden(true)
        }
