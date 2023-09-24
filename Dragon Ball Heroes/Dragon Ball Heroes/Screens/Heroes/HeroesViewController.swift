//
//  HeroViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class HeroesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var heroes: [Hero] = [Hero(name: "Goku", description: "djiagdpijadpiapjiagapijgapgjpjapjpsdsfsgsgsgsdgsdgsdfapjfdjiagdpijadpiapjiagapijgapgjpjapjpsdsfsgsgsgsdgsdgsdfapjfdjiagdpijadpiapjiagapijgapgjpjapjpsdsfsgsgsgsdgsdgsdfapjf", image: URL(string: "https://elcomercio.pe/resizer/gj5JbwxkmqRAa4HSpfOHEIUBf7k=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/6FUBT6XQXNHHNFOMCHIT7I34NA.jpg")),
                                  Hero(name: "Vegeta", description: "lorem ijpdaigiadgaspipaspsajpagspjpsjasapijjpifg", image: URL(string: "https://elcomercio.pe/resizer/5ybedS4m6BHrNsP3-0QoZsSkPHU=/580x330/smart/filters:format(jpeg):quality(90)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/YVDKLIO6LVBB5BF2CN5DYPEYGA.jpg"))]

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let hero = heroes[indexPath.row]
        var image: UIImage?
        if let cell = tableView.cellForRow(at: indexPath) as? HeroesTableViewCell {
            image = cell.heroImageView.image
        }

        let heroDetail = HeroesDetailViewController(hero: hero, image: image)
        navigationController?.pushViewController(heroDetail, animated: true)
    }
}

