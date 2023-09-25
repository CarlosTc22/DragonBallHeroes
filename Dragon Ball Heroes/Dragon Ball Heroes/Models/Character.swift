//
//  Character.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 24/9/23.
//

import Foundation

protocol Character {
    var id: String { get }
    var url: URL? { get }
    var title: String { get }
    var description: String { get }

    static func fetchCharacter(completion: @escaping ([Self]) -> Void)
}
