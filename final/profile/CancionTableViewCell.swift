//
//  CancionTableViewCell.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

class CancionTableViewCell: UITableViewCell {

    @IBOutlet weak var cancionView: UIImageView!
    @IBOutlet weak var cancion: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var duracion: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
