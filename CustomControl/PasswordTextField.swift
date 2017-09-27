//
//  PasswordTextField.swift
//  CustomControl
//
//  Created by Hoang Anh on 9/27/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

class PasswordTextField: LoginTextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel.text = "Password"
        self.textField.placeholder = "Enter your password"
        self.textField.isSecureTextEntry = true
    }

    override func checkValidInput() throws {
        if self.text.isEmpty {
            throw InvalidInputError.passwordEmpty
        } else if self.text.characters.count < 6 {
            throw InvalidInputError.passwordInvalid
        }
    }
    
}
