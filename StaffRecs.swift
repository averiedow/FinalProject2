//
//  StaffRecs.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import Foundation

struct StaffPicks: Identifiable, Hashable {
    
    var name: String
    var author: String
    var image: String
    var pickedBy: String
    var description: String
    let id = UUID()
}
var pick = [StaffPicks(name: "Cinder", author: "Placeholder", image: "YearOf", pickedBy: "Ella", description: "Placeholder"),
            StaffPicks(name: "Tender Is The Flesh", author: "Agustina Bazterica", image: "TITF", pickedBy: "Averie", description: "Tender is the Flesh portrays a society in which a virus has contaminated all animal meat. Because of the lack of animal flesh, cannibalism becomes legal. Marcos, a human meat supplier, is conflicted by this new society, and tortured by his own personal losses."),
            StaffPicks(name: "The Hate U Give", author: "Angie Thomas", image: "THUG", pickedBy: "Annie",  description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer.")
]
