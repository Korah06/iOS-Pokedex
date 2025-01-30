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
       let moves: [MoveEntry]
       let species: NamedAPIResource
       let sprites: Sprites
       let cries: Cries
       let stats: [StatEntry]
       let types: [TypeEntry]
       let pastTypes: [PastType]

       enum CodingKeys: String, CodingKey {
           case id, name, height, weight, order, species, sprites, cries, stats, types, moves, abilities, forms, pastTypes
           case baseExperience = "base_experience"
           case isDefault = "is_default"
           case gameIndices = "game_indices"
           case heldItems = "held_items"
           case locationAreaEncounters = "location_area_encounters"
       }
}
