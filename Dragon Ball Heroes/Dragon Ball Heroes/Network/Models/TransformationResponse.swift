//
//  TransformationResponse.swift
//  Dragon Ball Heroes
//
//  Created by Juan Carlos Torrejón Cañedo on 25/9/23.
//

import Foundation

struct TransformationResponse: Decodable {
    let id: String
    let name: String
    let description: String
    let photo: String
}
