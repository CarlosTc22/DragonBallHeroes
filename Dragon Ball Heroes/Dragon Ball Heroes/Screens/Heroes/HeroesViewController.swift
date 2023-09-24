//
//  HeroViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class HeroesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var characters: [Character] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Heroes"
        tableView.register(UINib(nibName: "HeroesCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }

}

// MARK: - UITableViewDataSource
extension HeroesViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let character = characters[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell") as? HeroesCell else { return UITableViewCell() }
        cell.configure(character: character)
        cell.accessoryType = .disclosureIndicator
        return cell
    }

}

// MARK: - UITableViewDelegate
extension HeroesViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let character = characters[indexPath.row]
        var image: UIImage?
        if let cell = tableView.cellForRow(at: indexPath) as? HeroesCell {
            image = cell.heroImageView.image
        }

        let heroDetail = HeroesDetailViewController(character: character, image: image)
        navigationController?.pushViewController(heroDetail, animated: true)
    }
}
