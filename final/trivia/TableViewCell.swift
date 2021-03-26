//
//  TableViewCell.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit


class TableViewCell: UITableViewCell {

    @IBOutlet weak var pregunta: UILabel!
    @IBOutlet weak var respuesta: UISwitch!
    
    var index: Int?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    @IBAction func respuestaAction(_ sender: Any) {
        respuestas[index ?? 0] = respuesta.isOn
        //print(respuestas)
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
