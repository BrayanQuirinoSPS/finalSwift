//
//  DiscografiaViewController.swift
//  final
//
//  Created by Brayan Quirino on 26/03/21.
//

import UIKit

let discografia = [["cancion":["Is This It","The Modern Age","Soma","Barely Legal","Someday","Alone, Together","Last Nite","Hard to Explain", "New York City Cops", "Triying your luck", "Take It or Leave It"], "duracion" :["2:35","3:32","2:38","3:58","3:05","3:12","3:18","3:45","3:36","3:28","3:16"]],["cancion":["What Ever Happened?","Reptilia","Automatic Stop","12:51","You Talk Way Too Much","Between Love & Hate","Meet Me in the Bathroom","Under Control", "The Way It Is", "The End Has No End", "I Can't Win"], "duracion" :["02:51","03:41","03:26","02:33","3:04","03:15","02:57","03:06","02:22","03:07","02:34"]],["cancion":["You Only Live Once","Juicebox","Heart in a Cage","Razorblade","On the Other Side","Vision of Division","Ask Me Anything","Electricityscape", "Killing Lies", "Fear of Sleep", "15 Minutes","Ize of the World","Evening Sun","Red Light"], "duracion" :["3:09","3:17","3:27","3:29","4:38","4:20","3:12","3:33","3:50","4:00","4:34","4:29","3:06","3:11"]],["cancion":["Machu Picchu","Under Cover of Darkness","Two Kinds of Happiness","You're so Right","Taken for a Fool","Games","Call Me Back","Gratisfaction", "Metabolism", "Life Is Simple in the Moonlight"], "duracion" :["3:32","2:38","3:58","3:05","3:12","3:18","3:45","3:36","3:28","3:16"]],["cancion":["Tap Out","All the Time","One Way Trigger","Welcome to Japan","80's Comedown Machine","50/50","Slow Animals","Partners In Crime", "Chances", "Happy Ending","Call It Fate, Call It Karma"], "duracion" :["2:57","3:32","2:38","3:58","3:05","3:12","3:18","3:45","3:36","3:28","3:16"]],["cancion":["The Adults Are Talking","Selfless","Brooklyn Bridge to Chorus","Bad Decisions","Eternal Summer","At The Door","Why Are Sundays So Depressing?","Not the Same Anymore", "Ode To The Mets"], "duracion" :["5:09","3:58","3:05","3:12","3:18","3:45","3:36","3:28","3:16"]]]




class DiscografiaViewController: UIViewController {
    
    var disco: String?
    var lanzamiento:  String?
    var portada: String?
    var discoIndex: Int?
    
    
    @IBOutlet weak var dicoTitle: UILabel!
    @IBOutlet weak var discoView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        dicoTitle.text = disco
        discoView.image = UIImage(named: portada ?? "theStrokesWithoutBack")
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func informacion(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "informacion") as! InfoViewController
        self.present(vc, animated: true, completion: nil)
    }
}


extension DiscografiaViewController  {
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionaste", discografia[0])
    }
}
    

extension  DiscografiaViewController {
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return discografia[discoIndex ?? 0]["cancion"]?.count ?? 0
    }
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTwo = tableView.dequeueReusableCell(withIdentifier: "cellTwo", for: indexPath) as! CancionTableViewCell
        cellTwo.cancion.text = discografia[discoIndex ?? 0]["cancion"]?[indexPath.row]
        cellTwo.duracion.text = discografia[discoIndex ?? 0]["duracion"]?[indexPath.row]
        
        return cellTwo
    }

}
