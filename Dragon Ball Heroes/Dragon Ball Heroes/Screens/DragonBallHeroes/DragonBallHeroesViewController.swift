//
//  DragonBallHeroesViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 24/9/23.
//

import UIKit

class DragonBallHeroesViewController: HeroesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DragonBallHero.fetchCharacter { character in
            self.characters = character
        }
    }
}
