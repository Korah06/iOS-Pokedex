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
    var pokemons : [String] = ["Pikachu", "Charizard","Bulbasaur","Charmander","Jigglypuff","Eevee","Nidoran","Raixhu","Mew","Mewtwo","Pichu", "Squirtle"]
    var truePokemons: [PokemonDTO]? = nil
    var pokemonsToLoad: PokemonListDTO? = nil
    
    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
    }
    
    public func addPokemon() {
        pokemons.append("Clefairy")
    }
    
    public func obtainPokemons() async {
        do{
            pokemonsToLoad = try await pokemonService.getPokemons(offset: pokemons.count)
            for result in pokemonsToLoad?.results ?? [] {
                let pokemonDto = try await pokemonService.getPokemon(id: result.name)
                truePokemons?.append(pokemonDto)
            }
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
