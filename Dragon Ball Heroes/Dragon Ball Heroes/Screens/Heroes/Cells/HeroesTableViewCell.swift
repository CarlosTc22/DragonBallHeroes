//
//  HeroesTableViewCell.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class HeroesTableViewCell: UITableViewCell {
    @IBOutlet private weak var heroImageView : UIImageView!
    @IBOutlet private weak var heroNameLabel : UILabel!
    @IBOutlet private weak var heroDescriptionLabel : UILabel!
    
    func configure(hero: Hero){
        heroNameLabel.text = hero.name
        heroDescriptionLabel.text = hero.description
    }
}
