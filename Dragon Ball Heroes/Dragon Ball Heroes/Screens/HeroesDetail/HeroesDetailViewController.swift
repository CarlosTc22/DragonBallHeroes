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
    private var transformations: [Transformation] = []
    
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
        heroDescLabel.numberOfLines = .zero
        configureButton()
        updateUI()
        let client = HTTPClient()
        client.fetchTransformations(requestData: TransformationRequest(id: character.id)) { result in
            switch result {
            case .success(let transformations):
                self.button.isHidden = false
                self.transformations = transformations.map { transformation in
                    Transformation(url: URL(string: transformation.photo), title: transformation.name, description: transformation.description)
                }
                self.button.isHidden = self.transformations.count == .zero
            case .failure(let error):
                print("Error fetching transformations: \(error)")
            }
        }
    }
    
    @IBAction func didSelectButton(_ sender: UIButton) {
       
        let transformationsVC = TransformationsViewController(transformations: self.transformations)
            self.navigationController?.pushViewController(transformationsVC, animated: true)
        
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
        button.isHidden = true
        button.backgroundColor = .systemBlue
        button.setTitle("Transformaciones", for: .normal)
        button.setTitleColor(.white, for: .normal)
    }
}
