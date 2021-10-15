//
//  LoginController.swift
//  App_Login-SignUp
//
//  Created by Kaique Lopes de Oliveira on 14/10/21.
//

import UIKit

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Create Gradient Color
    func configureUI() {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0 , 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
    }
}

