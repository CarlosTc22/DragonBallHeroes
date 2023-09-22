//
//  HeroViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class HeroesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var heroes: [Hero] = [Hero(name: "Goku", description: "djiagdpijadpiapjiagapijgapgjpjapjpsfapjf", image: nil),
                                  Hero(name: "Vegeta", description: "lorem ijpdaigiadgaspipaspsajpagspjpsjasapijjpifg", image: nil)]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Heroes"
        tableView.register(UINib(nibName: "HeroesTableViewCell", bundle: nil), forCellReuseIdentifier: "HeroCell")
    }
}

extension HeroesViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        heroes.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let hero = heroes[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HeroCell") as? HeroesTableViewCell else {return UITableViewCell()}
        cell.configure(hero: hero)
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
}


extension HeroesViewController: UITableViewDelegate {
    
}

