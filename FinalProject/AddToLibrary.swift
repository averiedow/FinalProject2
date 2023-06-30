//
//  AddToLibrary.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import SwiftUI



struct AddToLibrary: View {
    @State var textFieldText: String = ""
    @State var bookAuthorText : String = ""
    @State var opinionsText : String = ""
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Book Title")
                        .font(.headline)
                    TextField("Type Here", text: $textFieldText)
                        .background(Color.orange.opacity(0.3).cornerRadius(8))
                        .foregroundColor(.black)
                        .font(.headline)
                }.padding()
                HStack{
                    Text("Book Author")
                        .font(.headline)
                    TextField("Type Here", text: $bookAuthorText)
                        .background(Color.orange.opacity(0.3).cornerRadius(8))
                        .foregroundColor(.black)
                        .font(.headline)
                }.padding()
                HStack{
                    Text("How do you like it?")
                        .font(.headline)
                    TextField("Type your thoughts!", text: $opinionsText)
                        .background(Color.orange.opacity(0.3).cornerRadius(8))
                        .foregroundColor(.black)
                        .font(.headline)
                }.padding()
                    
                                    Button(action: {
                
                                    }, label:{
                                        Text("Save Book".uppercased())
                                            .padding()
                                            .background(Color.orange.opacity(0.3).cornerRadius(8))
                                            .foregroundColor(.black)
                                            .font(.headline)
                
                                    })
                }
                
            }
        
        
        }
    }

struct AddToLibrary_Previews: PreviewProvider {
    static var previews: some View {
        AddToLibrary()
    }
}
