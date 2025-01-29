//
//  PokemonService.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 19/1/25.
//

import Foundation

class PokemonServiceImpl: PokemonService{
    let urlBase:String = "https://pokeapi.co/api/v2/"
    let decoder:JSONDecoder = JSONDecoder()
    
    init () {
        decoder.keyDecodingStrategy = .convertFromSnakeCase
    }
    
    func getPokemon(id: String) async throws -> PokemonDTO {
        let endpoint = "\(urlBase)pokemon/\(id)"
        
        guard let url = URL(string: endpoint) else {
            throw PokeError.invalidURL
        }
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw PokeError.invalidResponse
        }
        
        do {
            let pokemonDTO = try decoder.decode(PokemonDTO.self, from: data)
            return pokemonDTO
        } catch {
            throw PokeError.decodingFailed
        }
    }
    
    func getPokemons(offset:Int) async throws -> PokemonListDTO {
        let endpoint = "\(urlBase)pokemon?offset=\(offset)&limit=20"
        
        guard let url = URL(string: endpoint) else {
            throw PokeError.invalidURL
        }
        
        let (data,response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw PokeError.invalidResponse
        }
        
        do {
            let pokemonsDTO = try decoder.decode(PokemonListDTO.self, from: data)
            return pokemonsDTO
        } catch {
            throw PokeError.decodingFailed
        }
    }
}
