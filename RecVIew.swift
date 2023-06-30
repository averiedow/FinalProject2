//
//  RecVIew.swift
//  FinalProject
//
//  Created by Averie Dow on 6/29/23.
//

import SwiftUI

struct RecView: View {
    var pick: picks = pickList1[2]
    
    var body: some View {
        VStack{
        HStack(alignment: .center) {
            
            Image(pick.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 81.0, height: 125.0)
                .border(Color.white)
            
            VStack(alignment: .leading, spacing: 15.0) {
            
                Text(pick.name)
                    .fontWeight(.bold)
                    .font(.title)
              
                    
                //                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                Text(pick.author)
                    .fontWeight(.bold)
                Text("Picked by \(pick.pickedBy)!")
                    .fontWeight(.medium)
                
                
                
                
                //                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
            }
            Spacer()
        }
        VStack {
            Text(pick.description)
        }
        }.padding()
        }
}

struct RecView_Previews: PreviewProvider {
    static var previews: some View {
        RecView()
    }
}
