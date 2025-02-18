//
//  PokemonDetail.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 6/2/25.
//

import SwiftUI

struct PokemonDetail: View {
    let pokemon : Pokemon
    var body: some View {
        VStack {
            let imageUrl: String? = getImage(pokemon.sprites)
            AsyncImage(url: URL(string:imageUrl ?? "")){ image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder:{
                if imageUrl == nil{
                    Text("Image Not Found")
                } else {
                    ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .white)).scaleEffect(3)
                }
            }
            Text(pokemon.name).fontWeight(.bold).font(.title).frame(maxWidth: .infinity).background(.white.opacity(0.25))
            HStack {
                let types = pokemon.types
                ForEach(Array(types.enumerated()), id: \.1.id) { index, type in
                    Text(type.type.name)
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: 100)
                        .background(pokemon.getColors()[index].opacity(0.7))
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding()
                }
                
            }
            Spacer()
        }
    }
    
    func getImage(_ sprites : Sprites) -> String? {
        if(sprites.frontDefault != nil){
            return sprites.frontDefault!
        }
        if(sprites.frontShiny != nil){
            return sprites.frontShiny!
        }
        if(sprites.backDefault != nil){
            return sprites.backDefault!
        }
        
        return nil
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
    PokemonDetail(pokemon:samplePokemon)
}
