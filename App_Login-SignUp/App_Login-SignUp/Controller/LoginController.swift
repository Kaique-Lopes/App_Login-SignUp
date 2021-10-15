//
//  LoginController.swift
//  App_Login-SignUp
//
//  Created by Kaique Lopes de Oliveira on 14/10/21.
//

import UIKit

class LoginController: UIViewController {

    let imageFirebase = UIImage(named: "firebase-logo")
    let iconImage: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Create Gradient Color
    func configureUI() {
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0 , 1.5]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        iconImage.image = imageFirebase
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 120, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 25)
    }
}

