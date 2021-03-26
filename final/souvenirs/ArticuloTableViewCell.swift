//
//  ArticuloTableViewCell.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

class ArticuloTableViewCell: UITableViewCell {
    
    var index: Int?
    @IBOutlet weak var imagenArticulo: UIImageView!
    
    @IBOutlet weak var contador: UIStepper!
    @IBOutlet weak var articulo: UILabel!
    @IBOutlet weak var precioLabel: UILabel!
    @IBOutlet weak var precio: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func contador(_ sender: Any) {
        let one = Double(contador.value)
        let two = Double(precios[index ?? 0])
        let three = one * two
        sumas[index ?? 0] = three
        precio.text = "\(contador.value)"
    }
}
