//
//  TypeEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct TypeEntryDTO: Decodable {
    let slot: Int
    let type: NamedAPIResourceDTO
}
