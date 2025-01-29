//
//  ContentView.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 15/1/25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @State var vm:HomeVM = HomeVM(pokemonService: PokemonServiceImpl())
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        
        let pokemons = vm.truePokemons
        
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(pokemons ?? []){ pokemon in
                    ZStack{
                        PokemonCard(pokemon: pokemon)
                    }.listRowBackground(Color.backgroundApp)
                        .scrollTransition{content, phase in content.opacity(phase.isIdentity ? 1 : 0.1).scaleEffect(x: phase.isIdentity ? 1 : 0.7, y: phase.isIdentity ? 1 : 0.7)
                        }
                }
            }.padding()
        }.scrollTargetBehavior(.viewAligned)
            .task {
                await vm.obtainPokemons()
            }
    }
    
}

#Preview {
    HomeView()
}
