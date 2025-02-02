//
//  VersionDetail.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct VersionDetailDTO: Decodable {
    let rarity: Int
    let version: NamedAPIResourceDTO
}
