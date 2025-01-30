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
    var truePokemons: [Pokemon]? = nil
    var pokemonsToLoad: PokemonListDTO? = nil
    var pokemonCount: Int = 20
    
    init(pokemonService: PokemonService) {
        self.pokemonService = pokemonService
    }
    
    public func addPokemon() {
        pokemons.append("Clefairy")
    }
    
    public func obtainPokemons() async {
        do{
            pokemonsToLoad = try await pokemonService.getPokemons(offset: pokemonCount)
            if(pokemonsToLoad?.results != nil){
                truePokemons = []
            }
            for result in pokemonsToLoad!.results {
                let pokemonDto = try await pokemonService.getPokemon(id: result.name)
                truePokemons?.append(pokemonDto)
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
