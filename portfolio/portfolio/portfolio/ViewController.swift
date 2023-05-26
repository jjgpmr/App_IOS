//
//  ViewController.swift
//  portfolio
//
//  Created by multilab on 17/05/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var selectButton: UIButton!
        
    @IBOutlet var portfolioButton: [UIView]!
   /* var imageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "frase")
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()*/
    @IBOutlet weak var imagemLogos: UIImageView!
    
    @IBOutlet weak var imagemCV: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func mostrarButoes(){
        imagemCV.isHidden = true
        imagemLogos.isHidden = true
        texto.isHidden=true
        portfolioButton.forEach {button in
            UIView.animate(withDuration: 0.3) {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            }
        }
    }

    @IBAction func selectAction(_ sender: Any) {
        mostrarButoes()
    }
    
    @IBAction func portfolioAction(_ sender: UIButton){
        mostrarButoes()
        switch sender.titleLabel!.text {
        case "Sobre mim":
            imagemLogos.isHidden=true
            texto.isHidden=false
            imagemCV.isHidden=true
            texto.text = "Um apaixonado por tecnologia e curioso por natureza. Tenho competências em diversas linguagens etecnologias, bem como competências transversais. Possuo boa capacidade de integração em equipas."
        case "Experiencia":
            imagemLogos.isHidden = false
            texto.isHidden=true
            imagemCV.isHidden=true
        case "Curriculum Vitae":
            imagemCV.isHidden = false
            imagemLogos.isHidden = true
            texto.isHidden=true
        default:
            print()
        }
    }
    
    
}

