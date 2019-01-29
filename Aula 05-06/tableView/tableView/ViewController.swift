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
        
        return visaoCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            listaBlocos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        
    }
    
    func adicionarBloco(nomeDoBloco: String, imagemBloco: UIImage){
        let bloco = Bloco(nome: nomeDoBloco, imagem: imagemBloco)
    
        let indice = IndexPath(row: listaBlocos.count, section: 0)
        
        listaBlocos.append(bloco)
        tableViewBlocos.insertRows(at: [indice], with: .automatic)
    }

    @IBAction func novoElemento(_ sender: Any) {
        performSegue(withIdentifier: "ListaParaNovoBloco", sender: self)
    }
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let visao = segue.destination as? AdicionarBlocoViewController{
            visao.controleTelaUm = self
        }
     }
}

