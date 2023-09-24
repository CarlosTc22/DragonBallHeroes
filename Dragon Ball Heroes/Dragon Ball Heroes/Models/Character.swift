//
//  Character.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 24/9/23.
//

import Foundation

protocol Character {
    var url: URL? { get }
    var title: String { get }
    var description: String { get }
    var transformations: [Transformation] { get }

    static func fetchCharacter(completion: ([Self]) -> Void)
}


