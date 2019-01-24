//
//  File.swift
//  CarnApp
//
//  Created by vinicius emanuel on 24/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import Foundation
import UIKit

class Bloco{
    
    var nome: String!
    var foto: UIImage!
    var curiosidade: String!
    
    init(nome: String, foto: UIImage, curiosidade: String){
        self.nome = nome
        self.foto = foto
        self.curiosidade = curiosidade
    }
    
}
