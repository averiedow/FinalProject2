//
//  HomeView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/28/23.
//

import SwiftUI

struct HomeView: View {
    
    var pick = [StaffPicks(name: "My Year of Rest and Recreation", author: "Otessa Moshfegh", image: "YearOf", description: "My Year of Rest and Relaxation is a 2018 novel by American author Ottessa Moshfegh. Moshfegh's second novel, it is set in New York City in 2000 and 2001 and follows an unnamed protagonist as she gradually escalates her use of prescription medications in an attempt to sleep for an entire year."),
                StaffPicks(name: "Daughter of the Pirate King", author: "Tricia Levenseller", image: "DOPK", description: "Sent on a mission to retrieve an ancient hidden map—the key to a legendary treasure trove—seventeen-year-old pirate captain Alosa deliberately allows herself to be captured by her enemies, giving her the perfect opportunity to search their ship. More than a match for the ruthless pirate crew, Alosa has only one thing standing between her and the map: her captor, the unexpectedly clever and unfairly attractive first mate Riden."),
                StaffPicks(name: "The Hate U Give", author: "Angie Thomas", image: "THUG", description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer.")
    ]
    
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
                    
                    ForEach((0...3), id: \.self) { b in
                        BookView(book: bookList1[b])
                    }
                    
                    //                    HStack{
                    //                        Image("YearOf")
                    //                            .resizable(resizingMode: .stretch)
                    //                            .frame(width: 162.0, height: 250.0)
                    //                            .border(Color.white)
                    //                        Spacer()
                    //                        VStack{
                    //                            Text("My Year of Rest and Relaxation")
                    //                                .font(.headline)
                    //                                .padding(.top, -120.0)
                    //                                .fontWidth(.standard)
                    //                                .multilineTextAlignment(.leading)
                    //                                .lineLimit(nil)
                    //                            Text("This is a description of my favorite book.")
                    //
                    //
                    //
                    //
                    //                        }
                    //                    }
                }
            }
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
