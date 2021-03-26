//
//  SouvenirsViewController.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

let souvenirs = ["articulos":["Sudadera", "Gorra", "Playera"], "imagenes":["hoddie","cap","jersey"]]
let promocion = "STROKE21"
let precios = [400,250,200]
var sumas = [0.0,0.0,0.0]
var total = 0.0
class SouvenirsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var codigo: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! CompraViewController
        vc.totales = "\(total)"
    }
    @IBAction func comprar(_ sender: Any) {
        total = sumas[0] + sumas[1] + sumas[2]
        if total == 0 {
            let alert = UIAlertController(title: "Sin articulos", message: "No hay articulos en la canasta", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            if codigo.text == promocion {
                total /= 2
                performSegue(withIdentifier: "toCompra", sender: nil)
            } else {
                performSegue(withIdentifier: "toCompra", sender: nil)
                let alert = UIAlertController(title: "Codigo incorrecto", message: "Ingresa un codigo valido", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
        }
    }
    

}

extension SouvenirsViewController {
    
    
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //
    }
}
    

extension SouvenirsViewController{
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return souvenirs["articulos"]?.count ?? 0
    }
 
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAr = tableView.dequeueReusableCell(withIdentifier: "cellAr", for: indexPath) as! ArticuloTableViewCell
        cellAr.imagenArticulo.image = UIImage(named: (souvenirs["imagenes"]?[indexPath.row])!)
        cellAr.articulo.text = souvenirs["articulos"]?[indexPath.row]
        cellAr.precioLabel.text = "$\(precios[indexPath.row])"
        cellAr.index = indexPath.row
            
        return cellAr
    }
}
