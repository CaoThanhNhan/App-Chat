//
//  WelcomeViewController.swift
//  Flash Chat iOS
//
//  Created by Cao Thanh Nhan.
//

import UIKit
import Firebase
class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text,let password = passwordTextfield.text{
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let loi = error {
                print(loi)
            } else {
                self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
    }
}
