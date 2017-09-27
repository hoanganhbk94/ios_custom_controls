//
//  LoginTextField.swift
//  CustomControl
//
//  Created by Hoang Anh on 9/27/17.
//  Copyright © 2017 anh. All rights reserved.
//

import UIKit

class LoginTextField: UIView, UITextFieldDelegate {
    
    var text: String {
        get { return self.textField.text ?? "" }
        set { self.textField.text = newValue }
    }
    
    // MARK: - Outlet
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var underLineView: UIView!
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupControls()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 40.0, height: 50.0)
    }
    
    // MARK: - Setup controls
    
    func setupControls() {
        if let containerView = Bundle.main.loadNibNamed("LoginTextField", owner: self, options: nil) {
            let view = containerView.first as! UIView
            view.frame = self.bounds
            self.addSubview(view)
            
            self.textField.delegate = self
        }
    }
    
    // MARK: - Textfield delegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.underLineView.backgroundColor = UIColor.blue
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.underLineView.backgroundColor = UIColor.lightGray
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.endEditing(true)
        return true
    }
    
    // MARK: - Valid input
    
    func checkValidInput() throws {

    }

}
