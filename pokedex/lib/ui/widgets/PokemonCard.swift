//
//  PokemonCard.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 18/1/25.
//

import SwiftUI

struct PokemonCard: View {
    @State var isLoading = true
    let pokemon : PokemonDTO
    var body: some View {
        let imageUrl: String? = getImage(pokemon.sprites)
        
        ZStack{
            Circle().foregroundStyle(.secondary).opacity(0.5)
            AsyncImage(url: URL(string:imageUrl ?? "")){ image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder:{
                if imageUrl == nil{
                    Text("Image Not Found")
                } else {
                    ProgressView().progressViewStyle(CircularProgressViewStyle(tint: .white)).scaleEffect(3)
                }
                
            }
            VStack{
                Spacer()
                Text(pokemon.name).foregroundStyle(.white).font(.title).bold().padding().frame(maxWidth: .infinity).background(.white.opacity(0.05))
            }
        }.frame(height: 300).cornerRadius(32)
    }
    func getImage(_ sprites : SpritesDTO) -> String? {
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
    let samplePokemon = PokemonDTO(
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
        cries: Cries(latest: "", legacy: ""),
        stats: [StatEntry(baseStat: 35, effort: 0, stat: NamedAPIResourceDTO(name: "speed", url: ""))],
        types: [TypeEntry(slot: 1, type: NamedAPIResourceDTO(name: "fairy", url: ""))],
        pastTypes: []
    )
    PokemonCard(pokemon: samplePokemon)
}
