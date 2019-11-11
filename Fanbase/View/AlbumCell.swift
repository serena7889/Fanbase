//
//  AlbumCell.swift
//  Fanbase
//
//  Created by Serena Lambert on 11/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class AlbumCell: UICollectionViewCell {
    
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var albumTitle: UILabel!
    @IBOutlet weak var albumYear: UILabel!
    
    func updateCell(album: Album) {
        albumImage.image = UIImage(named: album.imageName)
        albumTitle.text = album.title
        albumYear.text = album.year
    }
    
}
