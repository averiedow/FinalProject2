//
//  LibraryView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct LibraryView: View {
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
        
//            ScrollView {
                
                
                Text("library view")
                Image("YearOf")
                    .resizable(resizingMode: .stretch)
                    .frame(width: 162.0, height: 250.0)
                    .border(Color.white)
            
            
                            
                
                            }
        }
}
    
    struct LibraryView_Previews: PreviewProvider {
        static var previews: some View {
            LibraryView()
        }
    }

