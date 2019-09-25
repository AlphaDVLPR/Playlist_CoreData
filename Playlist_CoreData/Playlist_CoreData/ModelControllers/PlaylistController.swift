//
//  PlaylistController.swift
//  Playlist_CoreData
//
//  Created by AlphaDVLPR on 9/25/19.
//  Copyright © 2019 JesseRae. All rights reserved.
//

import Foundation

class PlaylistController {
    
    //MARK: - Singleton
    
    //MARK: - CRUD
    //Create
    func createPlaylist(withName name: String) {
        _ = Playlist(playlistName: name)
        saveToPersistentStores()
    }
    //Read
    //Update
    
    //Delete
    func deletePlaylist(playlist: Playlist) {
        CoreDataStack.context.delete(playlist)
        saveToPersistentStores()
    }
    
    //Save
    func saveToPersistentStores() {
        do {
            try CoreDataStack.context.save()
        } catch {
            print("Error in \(#function) : \(error.localizedDescription) \n~~~\n \(error)")
        }
    }
    //Load
}
