//
//  DetalhesViewController.swift
//  CarnApp
//
//  Created by vinicius emanuel on 24/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var blocoRecebido: Bloco!
  
    
    var novaInfo: Int!
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var curiosidade: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titulo.text = blocoRecebido.nome
        foto.image = blocoRecebido.foto
        curiosidade.text = blocoRecebido.curiosidade
        
    }
    
    @IBAction func voltar(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
