//
//  TelaDoisViewController.swift
//  CarnApp
//
//  Created by vinicius emanuel on 23/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class TelaDoisViewController: UIViewController {

    
    @IBOutlet weak var caixaTexto: UITextField!
    @IBAction func irTela3(_ sender: UIButton) {
        performSegue(withIdentifier: "DeTelaDoisParaTelaTres", sender: self)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        if let visaoTelaTres = segue.destination as? TelaTresViewController{
            
            visaoTelaTres.textoRecebido = caixaTexto.text!
            
        }
        
        
        print("Olá Mundo!")
        
    }
    

}
