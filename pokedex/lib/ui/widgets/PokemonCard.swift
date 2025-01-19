//
//  PokemonCard.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 18/1/25.
//

import SDWebImageSwiftUI
import SwiftUI

struct PokemonCard: View {
    var body: some View {
        ZStack{
            WebImage(url: URL(string: "https://imgs.search.brave.com/RZITxaPTOlp75Xl53qyZ1digg6fVk1IIsTgXxYlb3Hc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMjI0/NjI5Ny9waG90by9w/aWthY2h1LWF0LXRo/ZS1wcmVtaWVyZS1v/Zi1wb2tlbW9uLXRo/ZS1tb3ZpZS0yMDAw/LWF0LXRoZS12aWxs/YWdlLXRoZWF0ZXIt/d2VzdHdvb2QtY2Et/b24tNy0xNS0yMDAw/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1YejF5R29VZG1X/ejNDdFliRXdpT0hU/MS12MUlxQlpFdTBr/akN4Vkk0c3pRPQ")).resizable().scaledToFit().frame(height: 200)
            VStack{
                Spacer()
                Text("aasdas").foregroundStyle(.white).font(.title).bold().padding().frame(maxWidth: .infinity).background(.white.opacity(0.25))
            }
        }.frame(height: 200).cornerRadius(32)
    }
}

#Preview {
    PokemonCard()
}
