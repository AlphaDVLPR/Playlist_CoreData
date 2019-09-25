//
//  Convienience.swift
//  Playlist_CoreData
//
//  Created by AlphaDVLPR on 9/25/19.
//  Copyright © 2019 JesseRae. All rights reserved.
//

import Foundation
import CoreData

//This file is to allow files that exist in memory to know to communicate with the MOC right off the bat

extension Playlist {
    
    convenience init(playlistName: String, songs: [Song] = [], moc: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: moc)
        self.name = name
    }
}
