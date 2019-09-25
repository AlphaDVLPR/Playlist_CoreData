//
//  CoreDataStack.swift
//  Playlist_CoreData
//
//  Created by AlphaDVLPR on 9/25/19.
//  Copyright © 2019 JesseRae. All rights reserved.
//

import Foundation
import CoreData

//Creates your MOC
class CoreDataStack {
    
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Playlist_CoreData")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    }()
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
