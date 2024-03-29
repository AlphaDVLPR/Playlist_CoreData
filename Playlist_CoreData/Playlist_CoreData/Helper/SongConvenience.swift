//
//  SongConvenience.swift
//  Playlist_CoreData
//
//  Created by AlphaDVLPR on 9/25/19.
//  Copyright © 2019 JesseRae. All rights reserved.
//

import Foundation
import CoreData

extension Song {
    
    /// This is for the song initializer and the result not being used.
    @discardableResult
    convenience init(songName: String, artistName: String, playlistName: Playlist, moc: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: moc)
        self.songName = songName
        self.artistName = artistName
        self.playlist = playlistName
    }
}
