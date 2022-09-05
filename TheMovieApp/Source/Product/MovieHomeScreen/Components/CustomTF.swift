//
//  CustomTF.swift
//  TheMovieApp
//
//  Created by Lucas Pinto on 03/09/22.
//

import Foundation
import UIKit

class CustomTF: UITextField {
    
    init(placeholder: String, isSecure: Bool) {
        super.init(frame: .zero)
        let spacer = UIView()
            spacer.translatesAutoresizingMaskIntoConstraints = false
            spacer.heightAnchor.constraint(equalToConstant: 40).isActive = true
            spacer.widthAnchor.constraint(equalToConstant: 12).isActive = true
        
        let mg = UIImageView()
            mg.image = UIImage(systemName: "magnifyingglass")
            mg.heightAnchor.constraint(equalToConstant: 35).isActive = true
            mg.widthAnchor.constraint(equalToConstant: 35).isActive = true
            mg.tintColor = .darkGray
        
        rightView = mg
        rightViewMode = .always
        leftView = spacer
        leftViewMode = .always
        borderStyle = .none
        textColor = .white
        keyboardAppearance = .dark
        backgroundColor = UIColor(white: 1, alpha: 0.2)
        translatesAutoresizingMaskIntoConstraints = false
        isSecureTextEntry = isSecure
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor:UIColor(white: 1, alpha: 0.7)])
        layer.cornerRadius = 10
        autocapitalizationType = .none
        autocorrectionType = .no
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
