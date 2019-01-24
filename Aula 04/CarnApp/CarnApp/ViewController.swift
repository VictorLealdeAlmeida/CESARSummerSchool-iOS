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
    var id = -1
    
    let blocoUm = Bloco(nome: "Pitombeira dos Quatro Cantos", foto: #imageLiteral(resourceName: "pitombeira"), curiosidade: "O estandarte da Pitombeira dos Quatro Cantos é um losango contendo, no centro, um trecho da Rua Prudente de Morais, no bairro dos Quatro Cantos, ladeado por dois cachos de pitomba.")
    
    let blocoDois = Bloco(nome: "Elefante de Olinda", foto: #imageLiteral(resourceName: "elefante"), curiosidade: "Seu hino, 'Olinda nº 2', foi composto por Clídio Nigro e Clóvis Pereira; é uma das mais executada no carnaval de Pernambuco e é considerada quase um hino de Olinda. Ela chegou a ser oferecida à Pitombeira, que a recusou. Três anos depois, ao ser criado o bloco, foi oferecida ao Elefante, que aceitou após Clídio Nigro incluir a palavra 'elefante'.")
    
    let blocoTres = Bloco(nome: "Homem da Meia Noite", foto: #imageLiteral(resourceName: "homemmeianoite"), curiosidade: "O Homem da Meia-Noite é Patrimônio Vivo de Pernambuco desde 2006. O boneco místico e misterioso é símbolo do Carnaval de Olinda e abre oficialmente a folia com seu desfile pela Cidade Alta no sábado, com direito a papel picado, fogos e muito frevo. Todos aguardam ansiosos pela aparição do calunga gigante.")
    
    let blocoQuatro = Bloco(nome: "Eu Acho é Pouco", foto: #imageLiteral(resourceName: "euachoépouco"), curiosidade: "Fundado em 1976, em Olinda, o Grêmio Lítero Recreativo Cultural Misto Carnavalesco Eu Acho é Pouco foi criado por um grupo de amigos que havia se juntado para curtir a folia e criticar a ditadura militar em vigor no Brasil. ")
    
    let blocoCinco = Bloco(nome: "Bloco do Bigode Cheiroso", foto: #imageLiteral(resourceName: "bigode"), curiosidade: "É o bloco mais cheiroso do carnaval do Recife" )
    
    lazy var listaBlocos: [Bloco] = [blocoUm,  blocoDois,  blocoTres, blocoQuatro, blocoCinco]
 
    //🤙
    @IBAction func apertouProximo(_ sender: UIButton) {
        id = id + 1
        if id == 5{
            id = 0
        }
        
        titulo.text = listaBlocos[id].nome
        imagem.image = listaBlocos[id].foto
       
        print(id)
    }
    

    @IBAction func verDetalhes(_ sender: UIButton) {
        
        performSegue(withIdentifier: "DeListaParaDetalhes" , sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let visaoTelaDetalhes = segue.destination as? DetalhesViewController{
            
            visaoTelaDetalhes.blocoRecebido = listaBlocos[id]
        
        }
        
    }
    
}

