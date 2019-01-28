//
//  AdicionarBlocoViewController.swift
//  tableView
//
//  Created by vinicius emanuel on 28/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class AdicionarBlocoViewController: UIViewController {
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nome: UITextField!
    
    var controleTelaUm: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enviar(_ sender: Any) {
        if let nomeBloco = nome.text{
            controleTelaUm.adicionarBloco(nomeDoBloco: nomeBloco)
            dismiss(animated: true, completion: nil)
        }
    }

}
