//
//  Book+CoreDataProperties.swift
//  Assignment 4
//
//  Created by Alex on 4/4/25.
//
//

import Foundation
import CoreData


extension Book {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Book> {
        return NSFetchRequest<Book>(entityName: "Book")
    }

    @NSManaged public var author: String?
    @NSManaged public var editors: String?
    @NSManaged public var image: Data?
    @NSManaged public var title: String?
    @NSManaged public var favorite: Bool

}

extension Book : Identifiable {

}
