//
//  PokemonDetail.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 6/2/25.
//

import SwiftUI

struct PokemonDetail: View {
    let idPokemon : String
    var body: some View {
        VStack {
                    Text(idPokemon)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: 150, height: 100)
                .background(Color.blue)
                .cornerRadius(10)
                .shadow(radius: 5)
    }
}

#Preview {
    let samplePokemon = Pokemon(dto: PokemonDTO(
        id: 35,
        name: "Clefairy",
        baseExperience: 113,
        height: 6,
        isDefault: true,
        order: 56,
        weight: 75,
        abilities: [AbilityEntryDTO(isHidden: true, slot: 3, ability: NamedAPIResourceDTO(name: "friend-guard", url: ""))],
        forms: [NamedAPIResourceDTO(name: "clefairy", url: "")],
        gameIndices: [],
        heldItems: [],
        locationAreaEncounters: "",
        species: NamedAPIResourceDTO(name: "clefairy", url: ""),
        sprites: SpritesDTO(
            frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png",
            frontShiny: nil,
            backDefault: nil,
            backShiny: nil
        ),
        stats: [StatEntryDTO(baseStat: 35, effort: 0, stat: NamedAPIResourceDTO(name: "speed", url: ""))],
        types: [TypeEntryDTO(slot: 1, type: NamedAPIResourceDTO(name: "fairy", url: ""))]
    ))
    PokemonDetail(idPokemon:"samplePokemon")
}
