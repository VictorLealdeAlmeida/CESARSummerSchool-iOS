//
//  ViewController.swift
//  CarnApp
//
//  Created by vinicius emanuel on 23/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var imagem: UIImageView!
    var id = 0
    
    var nomes: [String] = ["Pitombeira dos Quatro Cantos", "Elefante de Olinda", "Homem da Meia Noite", "Eu Acho é Pouco", "Bloco do Bigode Cheiroso"]

    var fotos: [UIImage] = [#imageLiteral(resourceName: "pitombeira"), #imageLiteral(resourceName: "elefante"), #imageLiteral(resourceName: "homemmeianoite"), #imageLiteral(resourceName: "euachoépouco"), #imageLiteral(resourceName: "bigode")]
    
    //🤙
    @IBAction func apertouProximo(_ sender: UIButton) {
        titulo.text = nomes[id]
        imagem.image = fotos[id]
        id = id + 1
        if id == 5{
            id = 0
        }
        print(id)
    }
    
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    

}

