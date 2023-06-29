//
//  ContentView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.orange
        
    }
    var body: some View {
        TabView {
           
           HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
//            
            QuizView()
                .tabItem{
                    Label("Quiz", systemImage: "pencil")
                }
            BookClubView()
                .tabItem{
                    Label("Book Club", systemImage: "person.2.fill")
                }
            LibraryView()
                .tabItem{
                    Label("Library", systemImage: "books.vertical.fill")
                }
            
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
        

    
    
