//
//  Band.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import Foundation

class Band {
    
    let name: String
    let genre: Genre
    let albums: [Album]
    
    init(name: String, genre: Genre, albums: [Album]) {
        self.name = name
        self.genre = genre
        self.albums = albums
    }
    
}
