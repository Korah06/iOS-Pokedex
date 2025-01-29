//
//  PokemonDTO.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 29/1/25.
//

import Foundation

struct PokemonDTO: Decodable,Identifiable {
    let id: Int
    let name: String
    let url: String
    let baseExperience: Int
    let sprites:SpritesDTO
}
