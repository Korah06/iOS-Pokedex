//
//  GameIndex.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct GameIndex: Decodable {
    let gameIndex: Int
    let version: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }
}
