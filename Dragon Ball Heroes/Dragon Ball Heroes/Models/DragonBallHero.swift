//
//  DragonBallHero.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import Foundation

struct DragonBallHero: Character {
    let id: String
    let url: URL?
    let title: String
    let description: String

    static func fetchCharacter(completion: @escaping ([DragonBallHero]) -> Void) {
        let client = HTTPClient()

        client.fetchHeroes(requestData: DragonBallHeroRequest(name: "")) { result in
            switch result {
            case .success(let response):
                let heroes = response.map { hero in
                    DragonBallHero(id: hero.id, url: URL(string: hero.photo), title: hero.name, description: hero.description)
                }
                completion(heroes)
            case .failure:
                completion([])
            }

        }
    }
}
