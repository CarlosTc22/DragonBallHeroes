//
//  LoginViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 20/9/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func didTapLogin(_ sender: UIButton) {
        guard let username = usernameTextField.text, let password = passwordTextField.text else {return }
        
        let characters = CharactersViewController()
        characters.title = "Heroes"
        let navigationController = UINavigationController(rootViewController: characters)
        
        self.view.window?.rootViewController = navigationController
        //Api
        
    }
    
}

