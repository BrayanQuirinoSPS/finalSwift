//
//  TriviaViewController.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

let trivia = ["preguntas":["Parte del equipo de gestión de The Strokes está casado con Stroke.", "El trabajo del padre de Alber es como Artista","Gemstones es un albun de Strokes","Kimya Dawson es prima de un Stroke","Regina Spektor participo con Strokes"],"respuestas":[true,false,false,true,false]]

var respuestas = [true,true,true,true,true]
var indexToSend = 0
class TriviaViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func revisar(_ sender: Any) {
        if(respuestas[0] == trivia["respuestas"]?[0] as! Bool &&  respuestas[1] == trivia["respuestas"]?[1] as! Bool && respuestas[2] == trivia["respuestas"]?[2] as! Bool && respuestas[3] == trivia["respuestas"]?[3] as! Bool && respuestas[4] == trivia["respuestas"]?[4] as! Bool){
            performSegue(withIdentifier: "toTriviaBueno", sender: nil)
        }else{
            performSegue(withIdentifier: "toTriviaMalo", sender: nil)
        }
    }
    

}

extension TriviaViewController {

    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //indexToSend = indexPath.row
        //performSegue(withIdentifier: "toTriviaBueno", sender: nil)
    }
}
    

extension TriviaViewController {
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trivia["preguntas"]?.count ?? 0
    }
 
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTrivia = tableView.dequeueReusableCell(withIdentifier: "cellTrivia", for: indexPath) as! TableViewCell
        cellTrivia.pregunta.text = trivia["preguntas"]?[indexPath.row] as? String
        //cellTrivia.respuestaAction(<#T##sender: Any##Any#>)
        cellTrivia.index = indexPath.row
        return cellTrivia
    }
    
    
}
