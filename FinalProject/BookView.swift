//
//  BookView.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import SwiftUI

struct BookView: View {
    var book: Books = bookList1[2]
        
    var body: some View {
        VStack{
        HStack(alignment: .center) {
            
            Image(book.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 81.0, height: 125.0)
                .border(Color.white)
            
            VStack(alignment: .leading, spacing: 15.0) {
            
                Text(book.name)
                    .fontWeight(.bold)
                    .font(.title)
                //                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                Text(book.author)
                    .fontWeight(.bold)
                
                
                
                
                //                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            Spacer()
        }
        VStack {
            Text(book.description)
        }
        }.padding()
        }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
    }
}
