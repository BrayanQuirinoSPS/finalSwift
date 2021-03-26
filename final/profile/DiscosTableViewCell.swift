//
//  DiscosTableViewCell.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

class DiscosTableViewCell: UITableViewCell {

    @IBOutlet weak var disco: UIImageView!
    
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var detalle: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
 
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
