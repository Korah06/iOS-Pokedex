//
//  PokemonDTO.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 29/1/25.
//

import Foundation

struct PokemonDTO: Decodable {
    let id: Int
    let name: String
    let baseExperience: Int?
    let height: Int
    let isDefault: Bool?
    let order: Int
    let weight: Int
    let abilities: [AbilityEntryDTO]
    let forms: [NamedAPIResourceDTO]
    let gameIndices: [GameIndexDTO]
    let heldItems: [HeldItemDTO]
    let locationAreaEncounters: String?
    let species: NamedAPIResourceDTO
    let sprites: SpritesDTO
    let stats: [StatEntryDTO]
    let types: [TypeEntryDTO]
}
