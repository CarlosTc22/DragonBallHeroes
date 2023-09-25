//
//  Transformation.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 24/9/23.
//

import Foundation

struct Transformation: Character {
    var id: String = ""
    var url: URL?
    var title: String
    var description: String

    init(url: URL? = nil, title: String, description: String) {
        self.url = url
        self.title = title
        self.description = description
    }

    static func fetchCharacter(completion: ([Transformation]) -> Void) {
        // Not needed
    }
}
