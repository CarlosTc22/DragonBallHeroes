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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heroNameLabel.numberOfLines = .zero
        heroNameLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        heroDescriptionLabel.numberOfLines = 4
        heroDescriptionLabel.font = .systemFont(ofSize: 14, weight: .regular)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        heroImageView.image = nil
    }
    
    func configure(hero: Hero){
        heroNameLabel.text = hero.name
        heroDescriptionLabel.text = hero.description
        
        if let imageUrl = hero.image{
            DispatchQueue.global(qos: .userInteractive).async {
                if let data = try?Data(contentsOf: imageUrl) {
                    DispatchQueue.main.async { [weak self] in
                        self?.heroImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
