//
//  ListVC.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class ListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let bands = DataService.instance.getAllBands()
        for band in bands {
            print(band.name)
        }
    }

}

extension ListVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return DataService.instance.getGenres().count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let genres = DataService.instance.getGenres()
        let bandsForGenre = DataService.instance.getBands(forGenre: genres[section])
        return bandsForGenre.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionGenre = DataService.instance.getGenres()[section]
        return DataService.instance.getGenreName(forGenre: sectionGenre)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "BandCell") as? BandCell {
            
            let genres = DataService.instance.getGenres()
            let bandsForGenre = DataService.instance.getBands(forGenre: genres[indexPath.section])
            let band = bandsForGenre[indexPath.row]
            cell.updateCell(band: band)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
}

