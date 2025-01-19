//
//  ContentView.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 15/1/25.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    @State var vm:HomeVM = HomeVM()
    let columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        
        let pokemons = vm.pokemons
        
        ScrollView{
            LazyVGrid(columns: columns){
                ForEach(pokemons,id: \.self){ pokemon in
                    ZStack{
                        PokemonCard()
                    }.listRowBackground(Color.backgroundApp)
                        .scrollTransition{content, phase in content.opacity(phase.isIdentity ? 1 : 0.1).scaleEffect(x: phase.isIdentity ? 1 : 0.2, y: phase.isIdentity ? 1 : 0.2)
                        }
                }
            }.padding()
        }.scrollTargetBehavior(.viewAligned)
    }
    
}

#Preview {
    HomeView()
}
