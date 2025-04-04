//
//  BookViewModel.swift
//  Assignment 4
//
//  Created by Alex on 4/3/25.
//

import Foundation

class BookViewModel {
    var books: [Book]
    var jsonData: [BookResult]
    let url = "https://openlibrary.org/search.json?q=the+lord+of+the+rings"
    
    init(){
        books = [] // Populate books array from CoreData
        jsonData = []
        jsonData = getData(from: url)
    }
    
    private func getData(from url: String) -> [BookResult]{
        var rawData: [BookResult]
        rawData = []
        
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Something went wrong")
                return
            }
        
            var result: Response?
            do {
                result = try JSONDecoder().decode(Response.self, from: data)
            }
            catch {
                print("Failed to convert JSON to struct")
            }
            
            guard let json = result else{
                return
            }
            
            /*
            print(json.docs[0].title)
            print(json.docs[0].author_name)
            print(json.docs[0].first_publish_year)
             */
            
            rawData = json.docs
        })
        
        task.resume() // Run the task
        
        return rawData
    }
    
    private func jsonToCore(raw:[BookResult]) -> [Book]{
        
    }
    
    func search(query: String){
        let newURL = url+query
        jsonData = getData(from: newURL)
    }
}

struct Response: Codable{
    let docs: [BookResult]
}

struct BookResult: Codable {
    let title: String
    let author_name: [String]?
    let first_publish_year: Int?
}
