//
//  StaffRecs.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import Foundation

struct picks: Identifiable, Hashable {
    
    var name: String
    var author: String
    var image: String
    var pickedBy: String
    var description: String
    let id = UUID()
}
var pickList1 = [picks(name: "Cinder", author: "Marissa Meyer", image: "C1", pickedBy: "Ella", description: "Sixteen-year-old Cinder, a gifted mechanic, is a cyborg. She's a second-class citizen with a mysterious past and is reviled by her stepmother. But when her life becomes intertwined with the handsome Prince Kai's, she suddenly finds herself at the center of an intergalactic struggle, and a forbidden attraction."),
           picks(name: "Little Women", author: "Louisa May Alcott", image: "LW", pickedBy: "Averie", description: "With their father fighting in the American Civil War, sisters Jo, Meg, Amy and Beth are at home with their mother, a very outspoken woman for her time. The story tells of how the sisters grow up, find love, and find their place in the world. Four sisters and their mother at home. Their father is fighting in the war."),
            picks(name: "The Hate U Give", author: "Angie Thomas", image: "THUG", pickedBy: "Annie",  description: "Sixteen-year-old Starr Carter moves between two worlds: the poor neighborhood where she lives and the fancy suburban prep school she attends. The uneasy balance between these worlds is shattered when Starr witnesses the fatal shooting of her childhood best friend Khalil at the hands of a police officer.")
]
