//
//  EmailTextField.swift
//  CustomControl
//
//  Created by Hoang Anh on 9/27/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

class EmailTextField: LoginTextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.titleLabel.text = "Email"
        self.textField.placeholder = "Enter your email"
        self.textField.keyboardType = .emailAddress
    }
    
    override func checkValidInput() throws {
        if self.text.isEmpty {
            throw InvalidInputError.emailEmpty
        } else if !self.text.contains("@gmail.com") {
            throw InvalidInputError.emailInvalid
        }
    }

}
