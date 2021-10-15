//
//  CustomTextField.swift
//  App_Login-SignUp
//
//  Created by Kaique Lopes de Oliveira on 15/10/21.
//

import UIKit

class CustomTextField: UITextField {
    init(placeholder: String){
        super.init(frame: .zero)
        
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        endEditing(true)
        textColor = .white
        keyboardAppearance = .dark
        backgroundColor = UIColor(white: 1, alpha: 0.1)
        setHeight(height: 50)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor:
                                                                                                UIColor(white: 1, alpha: 0.5)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
