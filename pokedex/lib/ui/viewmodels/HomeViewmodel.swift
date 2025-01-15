//
//  HomeViewmodel.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 15/1/25.
//

import Foundation

@Observable
class HomeVM {
    var pokemons : [String] = ["Pikachu", "Charizard", "Squirtle"]
    
    public func addPokemon() {
        pokemons.append("Clefairy")
    }
}
