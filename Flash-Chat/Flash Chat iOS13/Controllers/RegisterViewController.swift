//
//  WelcomeViewController.swift
//  Flash Chat iOS
//
//  Created by Cao Thanh Nhan.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,let password = passwordTextfield.text{
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let loi = error {
                print(loi)
            } else {
                self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
    }
}
