//
//  LoginViewController.swift
//  MovieProject
//
//  Created by NCP:Zero on 13/11/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var inputUser: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
    
    var presenter: LoginPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSettings()
        buttonSettings()
        dismissKeyboard()
        inputPassword.isSecureTextEntry = true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func dismissKeyboard() {
        self.inputUser.delegate = self
        self.inputPassword.delegate = self
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc private func hideKeyboard() {
        self.view.endEditing(true)
    }
    
    func labelSettings() {
        usernameLabel.text = Login.username.localizable
        passwordLabel.text = Login.password.localizable
    }
    
    func buttonSettings() {
        loginButton.setTitle(
            Login.accessLogin.localizable,
            for: .normal)
    }
    
    
    @IBAction func actionLogin(_ sender: Any) {
        
        if inputUser.text == "Admin" && inputPassword.text == "Password*123" {
            presenter?.goToListMovies(view: self)
        } else {
            alertView(viewController: self, title: Alert.titleAlertLogin.localizable, message: Alert.messageAlertLogin.localizable)
        }
    }
}
