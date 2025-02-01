//
//  PokemonCard.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 18/1/25.
//

import SwiftUI

struct PokemonCard: View {
    let pokemon : Pokemon
    var body: some View {
        let imageUrl = getImage(pokemon.sprites)
        
        ZStack{
            AsyncImage(url: URL(string:imageUrl)){ image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder:{
                Circle().foregroundStyle(.secondary)
            }
            VStack{
                Spacer()
                Text(pokemon.name).foregroundStyle(.white).font(.title).bold().padding().frame(maxWidth: .infinity).background(.white.opacity(0.25))
            }
        }.frame(height: 200).cornerRadius(32)
    }
    func getImage(_ sprites : Sprites) -> String {
        if(sprites.frontDefault != nil){
            return sprites.frontDefault!
        }
        if(sprites.backDefault != nil){
            return sprites.backDefault!
        }
        if(sprites.frontShiny != nil){
            return sprites.frontShiny!
        }
        return ""
    }
}

#Preview {
    let samplePokemon = Pokemon(
            id: 35,
            name: "Clefairy",
            baseExperience: 113,
            height: 6,
            isDefault: true,
            order: 56,
            weight: 75,
            abilities: [AbilityEntry(isHidden: true, slot: 3, ability: NamedAPIResource(name: "friend-guard", url: ""))],
            forms: [NamedAPIResource(name: "clefairy", url: "")],
            gameIndices: [],
            heldItems: [],
            locationAreaEncounters: "",
            species: NamedAPIResource(name: "clefairy", url: ""),
            sprites: Sprites(
                frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png",
                frontShiny: nil,
                backDefault: nil,
                backShiny: nil
            ),
            cries: Cries(latest: "", legacy: ""),
            stats: [StatEntry(baseStat: 35, effort: 0, stat: NamedAPIResource(name: "speed", url: ""))],
            types: [TypeEntry(slot: 1, type: NamedAPIResource(name: "fairy", url: ""))],
            pastTypes: []
        )
    PokemonCard(pokemon: samplePokemon)
}
