//
//  ViewController.swift
//  DobrarValor
//
//  Created by vinicius emanuel on 22/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var caixaTexto: UITextField!
    @IBOutlet weak var painel: UILabel!
    
    @IBAction func dobrarValor(_ sender: UITextField) {
        
        var resultado = 0
        
        if let caixaTextoString = caixaTexto.text{
            
            if let caixaTextoInteiro = Int(caixaTextoString){
                
                resultado = 2 * caixaTextoInteiro
                
            }
            
        }
        
        
        painel.text = String(resultado)
        
    }
    
}

