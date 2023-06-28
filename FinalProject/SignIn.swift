//
//  SignIn.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct SignIn: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView{
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                VStack {
                    Text("Cheshire")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.777, green: 0.417, blue: 0.27))
                        .multilineTextAlignment(.leading)
                        .padding(.trailing, 200.0)
                        .padding(.bottom, 400.0)
                    
                    NavigationLink(destination: SignIn()) {
                        Text("Sign In")
                            .font(.largeTitle)
                            .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.794, green: 0.428, blue: 0.277)/*@END_MENU_TOKEN@*/)
                    }
                    }
                    
                
                
        }
        }
        .navigationBarHidden(true)
           
    }
    }


struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
