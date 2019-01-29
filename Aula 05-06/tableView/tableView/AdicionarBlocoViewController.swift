//
//  AdicionarBlocoViewController.swift
//  tableView
//
//  Created by vinicius emanuel on 28/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class AdicionarBlocoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var nome: UITextField!
    
    var controleTelaUm: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func enviar(_ sender: Any) {
        if let nomeBloco = nome.text{
            controleTelaUm.adicionarBloco(nomeDoBloco: nomeBloco, imagemBloco: foto.image! )
            dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func AbrirGaleria(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let imagemGaleria = UIImagePickerController()
            imagemGaleria.delegate = self
            imagemGaleria.sourceType = .photoLibrary
            imagemGaleria.allowsEditing = true
            self.present(imagemGaleria, animated: true, completion: nil)
        }
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let imagemRecebida = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            
            foto.image = imagemRecebida
            
        }
        
        picker.dismiss(animated: true, completion: nil)
        
    }
    

}
