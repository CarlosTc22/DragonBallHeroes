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
    
    let client = HTTPClient()
    
    @IBAction func didTapLogin(_ sender: UIButton) {
        guard let email = emailTextField.text, let password = passwordTextfield.text else { return }
        client.login(requestData: LoginRequest(username: email, password: password)) { result in
            switch result {
            case .success(let token):
                // Inicio de sesión exitoso, avanzar a la siguiente pantalla
                let heroes = DragonBallHeroesViewController(nibName: "HeroesViewController", bundle: nil)
                let navigationController = UINavigationController(rootViewController: heroes)
                self.view.window?.rootViewController = navigationController
            case .failure(let error):
                // Inicio de sesión fallido, mostrar un mensaje al usuario
                let alert = UIAlertController(title: "Error", message: "Inicio de sesión fallido. Por favor, inténtalo de nuevo.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
