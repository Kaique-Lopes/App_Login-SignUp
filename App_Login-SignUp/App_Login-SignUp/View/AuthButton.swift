//
//  AuthButton.swift
//  App_Login-SignUp
//
//  Created by Kaique Lopes de Oliveira on 15/10/21.
//

import UIKit

class AuthButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 5
        backgroundColor = .purple.withAlphaComponent(0.5)
        setTitle("Logar", for: .normal)
        setTitleColor(UIColor(white: 1, alpha: 0.67), for: .normal)
        setHeight(height: 50)
        isEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
