//
//  TelaTresViewController.swift
//  CarnApp
//
//  Created by vinicius emanuel on 23/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class TelaTresViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        print("Olá Mundo tela 3!")
    }
    var textoRecebido: String!
    @IBOutlet weak var painel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        painel.text = textoRecebido

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
