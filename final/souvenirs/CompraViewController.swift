//
//  CompraViewController.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

class CompraViewController: UIViewController {
    
    var totales: String?
    @IBOutlet weak var total: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        total.text = totales
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
