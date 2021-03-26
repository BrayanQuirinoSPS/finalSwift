//
//  ProfileViewController.swift
//  final
//
//  Created by Brayan Quirino on 25/03/21.
//

import UIKit

let discos = ["Is this It","Room on Fire","First Impressions of Earth", "Angles", "Comedown Machine", "The New Abnormal"]
let years = ["2001","2003","2006","2011","2013","2020"]
let imagen = ["isThisIt","roomOnFire","firstImpressions","angles","comedownMachine","theNewAbnormal"]

var discoToSend = ""
var yearToSend = ""
var imagenToSend = ""
var discoIndexToSend = 0

class ProfileViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func informacion(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "informacion") as! InfoViewController
        self.present(vc, animated: true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DiscografiaViewController
        vc.disco = discoToSend
        vc.lanzamiento = yearToSend
        vc.portada = imagenToSend
        vc.discoIndex = discoIndexToSend
        
    }

}

extension UIViewController: UITableViewDelegate {
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        discoToSend = discos[indexPath.row]
        imagenToSend = imagen[indexPath.row]
        yearToSend = years[indexPath.row]
        discoIndexToSend = indexPath.row
        performSegue(withIdentifier: "toDiscografia", sender: nil)
    }
}
    

extension UIViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discos.count
    }
 
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellOne = tableView.dequeueReusableCell(withIdentifier: "cellOne", for: indexPath) as! DiscosTableViewCell
        cellOne.disco.image = UIImage(named: imagen[indexPath.row])
        cellOne.nombre.text = discos[indexPath.row]
        cellOne.year.text = years[indexPath.row]
        
        
        return cellOne
    }
    
    
}
