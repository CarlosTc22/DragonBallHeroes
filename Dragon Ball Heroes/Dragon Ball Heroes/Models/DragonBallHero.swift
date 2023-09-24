//
//  DragonBallHero.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 22/9/23.
//

import Foundation

struct DragonBallHero: Character {

    let url: URL?
    let title: String
    let description: String
    let transformations: [Transformation]

    static func fetchCharacter(completion: ([DragonBallHero]) -> Void) {
        completion([DragonBallHero(url: URL(string: "https://elcomercio.pe/resizer/gj5JbwxkmqRAa4HSpfOHEIUBf7k=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/6FUBT6XQXNHHNFOMCHIT7I34NA.jpg")!,
                                   title: "Goku",
                                   description: "Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                                   transformations: [Transformation(url: URL(string: "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/01/dragon-ball-super-122_7.jpg?tf=1200x")!, title: "Kaioken", description: "Se pone rojo to fuerte")]),
                    DragonBallHero(url: URL(string: "https://elcomercio.pe/resizer/5ybedS4m6BHrNsP3-0QoZsSkPHU=/580x330/smart/filters:format(jpeg):quality(90)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/YVDKLIO6LVBB5BF2CN5DYPEYGA.jpg")!,
                                   title: "Vegeta",
                                   description: "Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://i.pinimg.com/originals/53/bc/83/53bc83730046ba98487e4e8dc980378f.jpg")!,
                                   title: "Goku",
                                   description: "Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/01/dragon-ball-super-122_7.jpg?tf=1200x")!,
                                   title: "Vegeta",
                                   description: "Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://i.pinimg.com/originals/53/bc/83/53bc83730046ba98487e4e8dc980378f.jpg")!,
                                   title: "Goku",
                                   description: "Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/01/dragon-ball-super-122_7.jpg?tf=1200x")!,
                                   title: "Vegeta",
                                   description: "Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://i.pinimg.com/originals/53/bc/83/53bc83730046ba98487e4e8dc980378f.jpg")!,
                                   title: "Goku",
                                   description: "Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet",
                                   transformations: []),
                    DragonBallHero(url: URL(string: "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/01/dragon-ball-super-122_7.jpg?tf=1200x")!,
                                   title: "Vegeta",
                                   description: "Lorem ipsum dolor sit amet",
                                   transformations: [])])
    }
}
