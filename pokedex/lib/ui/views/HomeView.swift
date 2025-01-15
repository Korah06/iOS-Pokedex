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

    var body: some View {
        VStack{
            ForEach(vm.pokemons, id: \.self){ pokemon in
                Text(pokemon)
            }
            
            Button{
                vm.addPokemon()
            } label: {
                Text("Add pokemon")
            }
        }
    }

}

#Preview {
    HomeView()
}
