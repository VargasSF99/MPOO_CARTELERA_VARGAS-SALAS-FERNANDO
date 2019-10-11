//
//  CELLTableViewCell.swift
//  CARTELERA_4
//
//  Created by Fernando Vargas Salas on 10/5/19.
//  Copyright © 2019 Fernando Vargas Salas. All rights reserved.
//

import UIKit

class CELLTableViewCell: UITableViewCell {
    

    @IBOutlet weak var POSTER1: UIImageView!
    @IBOutlet weak var NOMBRE: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
