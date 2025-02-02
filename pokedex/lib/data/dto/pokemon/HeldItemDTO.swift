//
//  HeldItem.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct HeldItemDTO: Decodable {
    let item: NamedAPIResourceDTO
    let versionDetails: [VersionDetailDTO]

}
