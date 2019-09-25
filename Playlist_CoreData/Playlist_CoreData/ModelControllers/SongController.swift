//
//  SongController.swift
//  Playlist_CoreData
//
//  Created by AlphaDVLPR on 9/25/19.
//  Copyright © 2019 JesseRae. All rights reserved.
//

import Foundation

class SongController {
    
    //MARK: - CRUD
    //Create
    func createSong(songName: String, artistName: String, to playlist: Playlist) {
        Song(songName: songName, artistName: artistName, playlistName: playlist)
        PlaylistController.shared.saveToPersistentStores()
    }
    //Read
    //Update
    //Delete
    func deleteSong(song: Song) {
        CoreDataStack.context.delete(song)
        PlaylistController.shared.saveToPersistentStores()
    }
    //Save
    //Load
}
