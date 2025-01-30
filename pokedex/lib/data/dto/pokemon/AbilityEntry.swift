//
//  AbilityEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

import Foundation

struct AbilityEntry: Decodable {
    let isHidden: Bool?
    let slot: Int
    let ability: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case isHidden = "is_hidden"
        case slot, ability
    }
}



