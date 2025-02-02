//
//  PokemonProtocol.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 21/1/25.
//

import Foundation

protocol PokemonService {
    func getPokemons(offset: Int) async throws -> PokemonListDTO
    func getPokemon(id: String) async throws -> PokemonDTO
}
