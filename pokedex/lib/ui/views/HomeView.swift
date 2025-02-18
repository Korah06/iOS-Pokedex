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
        let pokemons = vm.pokemons
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(pokemons ?? []){ pokemon in
                        NavigationLink(destination:PokemonDetail(pokemon: pokemon)){PokemonCard(pokemon: pokemon)}.listRowBackground(Color.backgroundApp)
                            .scrollTransition{content, phase in content.opacity(phase.isIdentity ? 1 : 0.1).scaleEffect(x: phase.isIdentity ? 1 : 0.7, y: phase.isIdentity ? 1 : 0.7)
                            }.onAppear {
                                if let lastPokemon = pokemons?.last, pokemon.id == lastPokemon.id {
                                    Task {
                                        await vm.obtainPokemons()
                                    }
                                }
                            }
                    }
                }.padding()
            }.scrollTargetBehavior(.viewAligned)
                .task {
                    await vm.obtainPokemons()
                }
        }
        
    }
    
}

#Preview {
    HomeView()
}
