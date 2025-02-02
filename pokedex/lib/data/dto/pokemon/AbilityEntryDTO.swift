//
//  AbilityEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

import Foundation

struct AbilityEntryDTO: Decodable {
    let isHidden: Bool?
    let slot: Int
    let ability: NamedAPIResourceDTO

}



