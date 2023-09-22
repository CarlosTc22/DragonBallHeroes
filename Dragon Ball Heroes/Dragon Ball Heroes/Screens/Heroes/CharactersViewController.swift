//
//  CharacterViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var characters: [Character] = [Character(name: "Goku", description: "djiagdpijadpiapjiagapijgapgjpjapjpsfapjf", image: nil),
                                           Character(name: "Vegeta", description: "lorem ijpdaigiadgaspipaspsajpagspjpsjasapijjpifg", image: nil)]

}

extension CharactersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = characters[indexPath.row]
        let cell = UITableViewCell(style: .default, reuseIdentifier: "heroCell")
        cell.textLabel?.text = character.name
        return cell
    }
    
    
}


extension CharactersViewController: UITableViewDelegate {
    
}

