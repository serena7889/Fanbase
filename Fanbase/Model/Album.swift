//
//  Album.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import Foundation

struct Album {
    
    let title: String
    let year: String
    let imageName: String
    
    init(title: String, year: String, imageName: String?) {
        self.title = title
        self.year = year
        self.imageName = imageName ?? "defaultAlbum"
    }
    
}
