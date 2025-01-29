//
//  ViewController.swift
//  Mysteree
//
//  Created by Siamak Moloudi on 28/01/2025.
//

import UIKit

class ViewController: UIViewController {
    var mystere = arc4random() % 1000 + 1
    @IBOutlet weak var essai: UITextField!
    @IBOutlet weak var invitation: UILabel!
    @IBOutlet weak var message: UILabel!
    var n : Int = 0
    @IBAction func clic(_ sender: Any) {
        n = n + 1
        var nombre : Int = Int(essai.text!) ?? 0
        print("Il a entré la valeur \(nombre)")
        if nombre < mystere {
            message.text = "C'est petit !"
        } else if nombre > mystere {
            message.text = "C'est grand !"
        } else {
            message.text = "Bravo !"
            invitation.text = "Vous avez trouvé le nombre secret en \(n) essai !"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

