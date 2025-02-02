//
//  HomeViewmodel.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 15/1/25.
//

import Foundation

@Observable
class HomeVM {
    let pokemonService:PokemonService
    var pokemons: [Pokemon]? = nil
    var pokemonsList: PokemonListDTO? = nil
    var pokemonCount: Int = 0
    
    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
    }
    
    public func obtainPokemons() async {
        do{
            pokemonCount += 20
            pokemonsList = try await pokemonService.getPokemons(offset: pokemonCount)
            if pokemonsList?.results != nil && pokemons == nil {
                pokemons = []
            }
            for result in pokemonsList!.results {
                let pokemon:Pokemon = try await pokemonService.getPokemon(id: result.name)
                pokemons?.append(pokemon)
            }
            print("Pokedex loaded")
        } catch PokeError.invalidURL {
            print("Invalid URL")
        }
        catch PokeError.decodingFailed {
            print("Decoding failed")
        }
        catch PokeError.invalidResponse {
            print("Invalid DATA")
        }
        catch {
            print("Unexpected error")
        }
    }
}
