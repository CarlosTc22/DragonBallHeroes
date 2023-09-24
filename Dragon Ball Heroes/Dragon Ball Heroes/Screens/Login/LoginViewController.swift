//
//  LoginViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 20/9/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!


    @IBAction func didTapLogin(_ sender: UIButton) {
        guard let email = emailTextField.text, let password = passwordTextfield.text else { return }

        // Llamada a la api
        // Si todo va bien
        let heroes = DragonBallHeroesViewController(nibName: "HeroesViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: heroes)
        self.view.window?.rootViewController = navigationController
    }

}

