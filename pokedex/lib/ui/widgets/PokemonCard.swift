//
//  PokemonCard.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 18/1/25.
//

import SwiftUI

struct PokemonCard: View {
    let pokemon : PokemonDTO
    var body: some View {
        let imageUrl = pokemon.sprites.frontDefault
        
        ZStack{
            AsyncImage(url: URL(string:imageUrl)){ image in
                image.resizable().aspectRatio(contentMode: .fit)
            } placeholder:{
                Circle().foregroundStyle(.secondary)
            }
            VStack{
                Spacer()
                Text("aasdas").foregroundStyle(.white).font(.title).bold().padding().frame(maxWidth: .infinity).background(.white.opacity(0.25))
            }
        }.frame(height: 200).cornerRadius(32)
    }
    
}

#Preview {
    PokemonCard(pokemon: PokemonDTO(
        id: 1,
        name: "Pikachu",
        url: "a",
        baseExperience: 128,
        sprites: SpritesDTO(
            backDefault: nil,
            backFemale: nil,
            backShiny: nil,
            backShinyFemale: nil,
            frontDefault: "https://example.com/front_default.png",
            frontFemale: nil,
            frontShiny: "https://example.com/front_shiny.png",
            frontShinyFemale: nil
        )
    ))
}
