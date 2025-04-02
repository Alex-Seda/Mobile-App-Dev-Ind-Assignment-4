//
//  ContentView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //@Environment(\.managedObjectContext) private var viewContext
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView {
            VStack{
                
                
                HStack{
                    TextField("Search", text: $searchText)
                        .padding(10)
                        .background(Color(.white))
                        .cornerRadius(10)
                        
                    Button(action: {
                        print(searchText)
                    }){
                        Image(systemName: "magnifyingglass")
                    }
                }
                .padding(.horizontal)
                
                
                List {
                    ForEach(0..<5, id: \.self) { i in
                        Text("Item \(i)")
                    }
                }
                
                
            }
            .navigationTitle("Book Search")
            .background(Color(.systemGray6))
        }
    }
}

#Preview {
    ContentView()
}
