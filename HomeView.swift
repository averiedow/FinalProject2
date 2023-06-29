//
//  HomeView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct HomeView: View {
    
    var pick = [StaffPicks(name: "Cinder", author: "Placeholder", image: "YearOf", pickedBy: "Ella", description: "My Year of Rest and Relaxation is a 2018 novel by American author Ottessa Moshfegh. Moshfegh's second novel, it is set in New York City in 2000 and 2001 and follows an unnamed protagonist as she gradually escalates her use of prescription medications in an attempt to sleep for an entire year."),
                StaffPicks(name: "Tender Is The Flesh", author: "Agustina Bazterica", image: "TITF", pickedBy: "Averie", description: "Tender is the Flesh portrays a society in which a virus has contaminated all animal meat. Because of the lack of animal flesh, cannibalism becomes legal. Marcos, a human meat supplier, is conflicted by this new society, and tortured by his own personal losses."),
                StaffPicks(name: "The Hate U Give", author: "Angie Thomas", image: "THUG", pickedBy: "Annie", description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer.")
    ]
    
    var body: some View {
      
        NavigationStack {
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
                        
                            ForEach((0...3), id: \.self) { b in
                                BookView(book: bookList1[b])
                        }
                       
                       
                    }
                  
                }
                
            }
            .navigationBarTitle(Text("Our Favorites"), displayMode: .large)
            .toolbarBackground(.orange)
        }
    }
        
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
