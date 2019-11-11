//
//  BandCell.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class BandCell: UITableViewCell {

    @IBOutlet weak var albumCollectionView: UICollectionView!
    @IBOutlet weak var nameLbl: UILabel!
    
    private var band: Band!
    
    func updateCell(band: Band) {
        self.band = band
        nameLbl.text = band.name
        albumCollectionView.dataSource = self
        albumCollectionView.delegate = self
    }

}

extension BandCell: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return band.albums.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(band.name)
        let album = band.albums[indexPath.row]
        print(album.title)
        if let cell = albumCollectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as? AlbumCell {
            cell.updateCell(album: album)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(band.name)
        print(band.albums)
    }
    
    
}
