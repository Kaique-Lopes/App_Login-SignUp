//
//  LoginController.swift
//  App_Login-SignUp
//
//  Created by Kaique Lopes de Oliveira on 14/10/21.
//

import UIKit

class LoginController: UIViewController {
    
    private let imageFirebase = UIImage(named: "firebase-logo")
    private let iconImage: UIImageView = UIImageView()
    
    // MARK: - Create TextFields
    private let emailTextField: UITextField = {
        let tf = UITextField()
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        tf.leftView = spacer
        tf.leftViewMode = .always
        
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.placeholder = "Digite seu E-mail"
        tf.backgroundColor = UIColor(white: 1, alpha: 0.1)
        tf.setHeight(height: 50)
        tf.attributedPlaceholder = NSAttributedString(string: "Digite seu E-mail", attributes: [.foregroundColor:
                                                                                                UIColor(white: 1, alpha: 0.5)])
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        tf.leftView = spacer
        tf.leftViewMode = .always
        
        tf.borderStyle = .none
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.isSecureTextEntry = true
        tf.placeholder = "Digite sua Senha"
        tf.backgroundColor = UIColor(white: 1, alpha: 0.1)
        tf.setHeight(height: 50)
        tf.attributedPlaceholder = NSAttributedString(string: "Digite sua Senha", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.5)])
        return tf
    }()
    
    private let buttonOk: UIButton = {
     let bt = UIButton()
        bt.backgroundColor = .green
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }

    func configureUI() {
        // MARK: - Func Gradient Colors
        navigationController?.navigationBar.isHidden = true
        navigationController?.navigationBar.barStyle = .black
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemPurple.cgColor, UIColor.systemBlue.cgColor]
        gradient.locations = [0 , 1.5]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        // MARK: - Image Logo Firebase
        iconImage.image = imageFirebase
        view.addSubview(iconImage)
        iconImage.centerX(inView: view)
        iconImage.setDimensions(height: 120, width: 120)
        iconImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 25)
        
        // MARK: - StackView with TextFields
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextField])
        stack.axis = .vertical
        stack.spacing = 20
        view.addSubview(stack)
        stack.anchor(top: iconImage.bottomAnchor, left: view.leftAnchor,
                     right: view.rightAnchor, paddingTop: 32, paddingLeft: 32,
                     paddingRight: 32)
        
        // MARK: - Create Button
        let button = UIButton()
        view.addSubview(button)
        button.anchor(top: stack.bottomAnchor)
        
    }
}

