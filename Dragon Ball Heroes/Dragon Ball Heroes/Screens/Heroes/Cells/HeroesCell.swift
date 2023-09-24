//
//  HeroesTableViewCell.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import UIKit

class HeroesCell: UITableViewCell {
    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroDescLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        heroNameLabel.numberOfLines = .zero
        heroNameLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        heroDescLabel.numberOfLines = .zero
        heroDescLabel.font = .systemFont(ofSize: 14, weight: .regular)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        heroImageView.image = nil
    }

    func configure(character: Character) {
        heroNameLabel.text = character.title
        heroDescLabel.text = character.description

        if let imageUrl = character.url {
            DispatchQueue.global(qos: .userInteractive).async {
                if let data = try? Data(contentsOf: imageUrl) {
                    DispatchQueue.main.async { [weak self] in
                        self?.heroImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
