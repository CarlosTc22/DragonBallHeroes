//
//  HeroesDetailViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 23/9/23.
//

import UIKit

class HeroesDetailViewController: UIViewController {

    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroDescriptionLabel: UILabel!
    
    private let hero: Hero
    private let image: UIImage?
    
    init(hero: Hero, image: UIImage?) {
        self.hero = hero
        self.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = hero.name
        heroDescriptionLabel.numberOfLines = .zero
        updateUI()
        
    }
}

private extension HeroesDetailViewController {
    func updateUI() {
        self.heroImageView.image = image
        self.heroNameLabel.text = hero.name
        self.heroDescriptionLabel.text = hero.description
    }
}
