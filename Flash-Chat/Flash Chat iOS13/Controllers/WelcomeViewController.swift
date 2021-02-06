//
//  WelcomeViewController.swift
//  Flash Chat iOS
//
//  Created by Cao Thanh Nhan.
//

import UIKit
import CLTypingLabel
class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text="⚡️FlashChat"
        
    }
}
