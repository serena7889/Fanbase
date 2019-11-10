//
//  BandCell.swift
//  Fanbase
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import UIKit

class BandCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    
    func updateCell(band: Band) {
        nameLbl.text = band.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
