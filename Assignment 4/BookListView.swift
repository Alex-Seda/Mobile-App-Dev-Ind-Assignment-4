//
//  BookListView.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI

struct BookListView: View {
    var body: some View {
        List {
            ForEach(0..<5, id: \.self) { i in
                Text("Item \(i)")
            }
        }
    }
}

#Preview {
    BookListView()
}
