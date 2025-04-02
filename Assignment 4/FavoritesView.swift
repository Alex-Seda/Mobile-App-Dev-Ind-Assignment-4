//
//  FavoritesView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI
import CoreData

struct FavoritesView: View {
    //@Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        
        NavigationView {
            BookListView()
                .padding(.top)
                .navigationTitle("Favorites")
                .background(Color(.systemGray6))
        }
    }
}

#Preview {
    FavoritesView()
}
