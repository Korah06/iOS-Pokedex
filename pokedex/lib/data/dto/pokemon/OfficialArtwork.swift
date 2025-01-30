//
//  OfficialArtwork.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct OfficialArtwork: Decodable {
    let frontDefault: String?
    let frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}
