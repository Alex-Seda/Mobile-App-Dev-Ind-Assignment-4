//
//  BookListView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI

struct BookListView: View {
    var body: some View {
        @State var viewModel = BookViewModel()
        @State var books = viewModel.books
        
        List {
            ForEach(0..<5, id: \.self) { i in
                HStack{
                    BookView(/*$books[i]*/)
                    
                    Spacer()
                    
                    Button(action:{
                        print("clicked")
                        // Toggle the below:
                            // Add/remove object to favorites array
                            // Fill/unfill heart
                    }){
                        Image(systemName: "heart")
                    }
                }
            }
        }
    }
}

#Preview {
    BookListView()
}
