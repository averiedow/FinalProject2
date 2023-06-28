//
//  ContentView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           
           HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            LibraryView()
                .tabItem{
                    Label("Candidates", systemImage: "books.vertical.fill")
                }
            QuizView()
                .tabItem{
                    Label("Quiz", systemImage: "pencil")
                }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        

    
    
