//
//  AddToLibrary.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import SwiftUI

struct AddToLibrary: View {
    struct Books: Identifiable, Hashable {
        
        var name: String
        var author: String
        var image: String
        var description: String
        let id = UUID()
    }

    var body: some View {
        LazyHStack{
            Text("Book Title")
            TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
        }
    }
}

struct AddToLibrary_Previews: PreviewProvider {
    static var previews: some View {
        AddToLibrary()
    }
}
