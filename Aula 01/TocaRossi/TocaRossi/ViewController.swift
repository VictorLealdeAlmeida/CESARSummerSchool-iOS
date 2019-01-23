//
//  ViewController.swift
//  TocaRossi
//
//  Created by vinicius emanuel on 22/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var botao: UIButton!
    @IBOutlet weak var contador: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func apertou(_ sender: UIButton) {
        
        contador.text = "1"
        botao.setTitle("Curtiu", for: .normal)
        
    }
    
    @IBAction func pularDireita(_ sender: UIButton) {
        
        if sender.tag == 1{
            foto.image = UIImage(named: "reginaldo-rossi")
        }else if sender.tag == 2{
            foto.image = #imageLiteral(resourceName: "rossi2")
        }
        
        
    }
}




