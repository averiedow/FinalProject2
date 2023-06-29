//
//  LibraryView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Text("Your Library")
                .font(.headline)
                .foregroundColor(.orange.opacity(0.90))
            
            ScrollView {
                VStack {
                    
                  
                   
                    HStack{
                        Image("YearOf")
                            .resizable(resizingMode: .stretch)
                            .frame(width: 162.0, height: 250.0)
                            .border(Color.white)
                        Spacer()
                        Text("My Year of Rest and Relaxation")
                            .font(.headline)
                            
                            .padding(.top, -120.0)
                            .fontWidth(.standard)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                    } .padding(UIScreen.main.bounds.width * 0.06)
                        
                    
                    
                    
                }
            }
        }
    }}
        struct LibraryView_Previews: PreviewProvider {
            static var previews: some View {
                LibraryView()
            }
        }
        
    
