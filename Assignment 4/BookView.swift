//
//  BookView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI

struct BookView: View {
    var body: some View {
        HStack{
            Text("Image") // Image
            
            Spacer()
            
            VStack{
                Text("Title") // Title
                Text("Author") // Author
                Text("Editor") // Editors
            }
            
            
            // Change this stack to be left aligned
            
            
            
        }
        .padding()
    }
}

#Preview {
    BookView()
}
