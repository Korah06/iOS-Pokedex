//
//  PokemonListDTO.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 20/1/25.
//

import Foundation

struct PokemonListDTO :Codable{
    let count: Int
    let results: [PokemonResumedDTO]
}
