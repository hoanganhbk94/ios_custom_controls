//
//  ViewController.swift
//  CustomControl
//
//  Created by Hoang Anh on 9/27/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: EmailTextField!
    @IBOutlet weak var passwordTextField: PasswordTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Action
    
    @IBAction func loginButtonAction(_ sender: Any) {
        do {
            try self.emailTextField.checkValidInput()
            try self.passwordTextField.checkValidInput()
            self.didLogin(email: self.emailTextField.text, password: self.passwordTextField.text)
        } catch let error {
            print(error)
        }
    }
    
    func didLogin(email: String, password: String) {
        if email == "hoanganhbk94@gmail.com" && password == "123456" {
            print("Login success")
        } else {
            print("Email or password is wrong")
        }
    }

}
