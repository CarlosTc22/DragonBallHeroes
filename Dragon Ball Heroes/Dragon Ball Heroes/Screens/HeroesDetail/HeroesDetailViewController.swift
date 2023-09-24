//
//  HeroesDetailViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 23/9/23.
//

import UIKit

class HeroesDetailViewController: UIViewController {

    @IBOutlet private weak var heroImageView: UIImageView!
    @IBOutlet private weak var heroNameLabel: UILabel!
    @IBOutlet private weak var heroDescLabel: UILabel!
    @IBOutlet private weak var button: UIButton!

    private let character: Character
    private let image: UIImage?

    init(character: Character, image: UIImage?) {
        self.character = character
        self.image = image
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = character.title
        configureButton()
        heroDescLabel.numberOfLines = .zero
        updateUI()
    }
    
    @IBAction func didSelectButton(_ sender: UIButton) {
        let transformationsVC = TransformationsViewController(transformations: self.character.transformations)
        navigationController?.pushViewController(transformationsVC, animated: true)
    }
}

// MARK: - Private methods
private extension HeroesDetailViewController {
    func updateUI() {
        self.heroImageView.image = image
        self.heroNameLabel.text = character.title
        self.heroDescLabel.text = character.description
    }

    func configureButton() {
        button.isHidden = character.transformations.count == .zero
        button.backgroundColor = .systemBlue
        button.setTitle("Transformaciones", for: .normal)
        button.setTitleColor(.white, for: .normal)
    }
}
