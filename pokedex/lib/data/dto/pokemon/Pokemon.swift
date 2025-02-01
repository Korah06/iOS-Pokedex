//
//  PokemonDTO.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 29/1/25.
//

import Foundation

struct Pokemon: Decodable,Identifiable {
    let id: Int
       let name: String
       let baseExperience: Int?
       let height: Int
       let isDefault: Bool?
       let order: Int
       let weight: Int
       let abilities: [AbilityEntry]
       let forms: [NamedAPIResource]
       let gameIndices: [GameIndex]?
       let heldItems: [HeldItem]?
       let locationAreaEncounters: String?
       let species: NamedAPIResource
       let sprites: Sprites
       let cries: Cries
       let stats: [StatEntry]
       let types: [TypeEntry]
       let pastTypes: [PastType]
}
