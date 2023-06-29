//
//  BookClubView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import SwiftUI

struct BookClubView: View {
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
                //            Text("Your Library")
                //                .font(.headline)
                //                .foregroundColor(.orange.opacity(0.90))
                
                
                ScrollView {
                    VStack {
                        Text("bookclub view")
                        
                    }
                }
            }
        }
    }

    struct BookClubView_Previews: PreviewProvider {
        static var previews: some View {
            BookClubView()
        }
    }



