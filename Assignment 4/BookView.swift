//
//  BookView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI

struct BookView: View {
    @State private var fav = false
    var body: some View {
        //@Binding var book: Book
        
        HStack{
            Text("Image") // Image
            
            VStack{
                Text("Title") // Title
                Text("Author") // Author
                Text("Editor") // Editors
            }
            
            Spacer()
            
            Button(action:{
                fav.toggle()
                /*
                 
                 if(book.favorite){
                    toggle favorite
                    
                 }
                 else{
                 
                 }
                 
                 */
                
                
                // Toggle the below:
                    // Add/remove object to favorites array
                    // Fill/unfill heart
            }){
                Image(systemName: fav ? "heart.fill" : "heart")
                    .foregroundColor(.red)
            }
            
        }
        .padding()
    }
}

#Preview {
    BookView()
}
