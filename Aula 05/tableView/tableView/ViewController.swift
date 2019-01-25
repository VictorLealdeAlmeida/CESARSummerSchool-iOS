//
//  ViewController.swift
//  tableView
//
//  Created by vinicius emanuel on 25/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewBlocos: UITableView!
    
    let blocoUm = Bloco(nome: "Pitombeira dos Quatro Cantos", imagem: #imageLiteral(resourceName: "p"))
    let blocoDois = Bloco(nome: "Elefante de Olinda", imagem: #imageLiteral(resourceName: "elefante"))
    let blocoTres = Bloco(nome: "Homem da Meia Noite", imagem: #imageLiteral(resourceName: "leal"))
    let blocoQuatro = Bloco(nome: "Eu Acho é Pouco", imagem: #imageLiteral(resourceName: "euachohepouco"))
    let blocoCinco = Bloco(nome: "Bloco do Bigode Cheiroso", imagem: #imageLiteral(resourceName: "bigode"))
    
    lazy var listaBlocos: [Bloco] = [blocoUm , blocoDois, blocoTres,blocoQuatro,  blocoCinco]
    let cores = [#colorLiteral(red: 0.6274509804, green: 0.1843137255, blue: 0.2, alpha: 1),#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1),#colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1),#colorLiteral(red: 0.6679978967, green: 0.4751212597, blue: 0.2586010993, alpha: 1),#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewBlocos.delegate = self
        tableViewBlocos.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaBlocos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let visaoCell = tableViewBlocos.dequeueReusableCell(withIdentifier: "blocoCell") as! BlocoTableViewCell
        
        visaoCell.titulo.text = listaBlocos[indexPath.row].nome
        visaoCell.imagem.image = listaBlocos[indexPath.row].imagem
        visaoCell.backgroundColor = cores[indexPath.row]
        
        return visaoCell
    }

}

