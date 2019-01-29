//
//  UserDefaults.swift
//  LanternaRGB
//
//  Created by vinicius emanuel on 29/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import Foundation

class DadosSetados{
    private let defaults = UserDefaults.standard
    static let variavelCompartilhada = DadosSetados()
    
    var sliderR: Float{
        get{
            return defaults.float(forKey: "R")
        }
        set{
            defaults.set(newValue, forKey: "R")
        }
    }
    
    var sliderG: Float{
        get{
            return defaults.float(forKey: "G")
        }
        set{
            defaults.set(newValue, forKey: "G")
        }
    }
    
    var sliderB: Float{
        get{
            return defaults.float(forKey: "B")
        }
        set{
            defaults.set(newValue, forKey: "B")
        }
    }
    
    var tomada: Bool{
        get{
            return defaults.bool(forKey: "T")
        }
        set{
            defaults.set(newValue, forKey: "T")
        }
    }
    
}
