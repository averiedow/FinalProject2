//
//  HomeView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Text("home page")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
