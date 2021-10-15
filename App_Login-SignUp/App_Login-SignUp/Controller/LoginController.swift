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
    private let emailTextField = CustomTextField(placeholder: "Digite seu E-mail")
    
    private let passwordTextField: CustomTextField = {
        let tf = CustomTextField(placeholder: "Digite sua Senha")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let loginButton: AuthButton = {
        let button = AuthButton(type: .system)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Create Button Forgot Password
    
    private let forgotPassword: UIButton = {
        let button = UIButton(type: .system)
        
        let atts : [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.8),
                                                    .font: UIFont.systemFont(ofSize: 15)]
        let attributedTitle = NSMutableAttributedString(string: "Esqueci minha senha! ", attributes: atts)
        
        let boldAtts : [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.8),
                                                        .font: UIFont.boldSystemFont(ofSize: 15)]
        attributedTitle.append(NSAttributedString(string: " Lembrar Senha", attributes: boldAtts))
        button.setAttributedTitle(attributedTitle, for: .normal)
        button.addTarget(self, action: #selector(handleForgotPassword), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    @objc func handleForgotPassword() {
        print("DEBUG--HandleForgotPassword")
    }
    
    @objc func handleLogin() {
        print("DEBUG-- Handle")
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
        let stack = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton, forgotPassword])
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

