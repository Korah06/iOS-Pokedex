//
//  PokemonCard.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 18/1/25.
//

import SwiftUI

struct PokemonCard: View {
    @State var isLoading = true
    let pokemon : Pokemon
    var body: some View {
        let imageUrl: String? = getImage(pokemon.sprites)
        
        ZStack{
            Circle().fill(
                LinearGradient(
                    gradient: Gradient(colors: pokemon.getColors()),
                    startPoint: .top,
                    endPoint: .bottom
                )
            ).opacity(0.5)
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
                Text(pokemon.name).foregroundStyle(.gray).font(.title).bold().padding().frame(maxWidth: .infinity).background(.white.opacity(0.05))
            }
        }.frame(height: 300).cornerRadius(32)
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
    PokemonCard(pokemon: samplePokemon)
}
