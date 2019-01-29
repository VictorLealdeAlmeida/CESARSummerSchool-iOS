//
//  ViewController.swift
//  LanternaRGB
//
//  Created by vinicius emanuel on 29/01/19.
//  Copyright © 2019 vinicius emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var sliders: [UISlider]!
    @IBOutlet weak var tomada: UISwitch!
    let dados = DadosSetados.variavelCompartilhada
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliders[0].value = dados.sliderR
        sliders[1].value = dados.sliderG
        sliders[2].value = dados.sliderB
        
        tomada.isOn = dados.tomada
        alterarCor()
    }
    
    @IBAction func sliderMudou(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            dados.sliderR = sender.value
        case 1:
            dados.sliderG = sender.value
        case 2:
            dados.sliderB = sender.value
        default:
            break
        }
        alterarCor()
    }
    
    @IBAction func ligaDesliga(_ sender: UISwitch) {
        dados.tomada = sender.isOn
        alterarCor()
    }
    
    func alterarCor(){
       let cor = UIColor(red: CGFloat(dados.sliderR),  green: CGFloat(dados.sliderG), blue: CGFloat(dados.sliderB), alpha: 1.0)
        if dados.tomada{
            view.backgroundColor = cor
        }else{
            view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        }
    }
    
}

