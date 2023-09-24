//
//  TransformationsViewController.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 24/9/23.
//

import UIKit

class TransformationsViewController: HeroesViewController {

    init(transformations: [Transformation]) {
        super.init(nibName: "HeroesViewController", bundle: nil)
        self.characters = transformations
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

