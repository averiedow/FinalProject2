//
//  Sign In.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct Sign_In: View {
    
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
                
        }
        }
        .navigationBarHidden(true)
           
    }
}

struct Sign_In_Previews: PreviewProvider {
    static var previews: some View {
        Sign_In()
    }
}
