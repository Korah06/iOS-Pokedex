//
//  PastEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct PastType: Decodable {
    let generation: NamedAPIResource
    let types: [TypeEntry]
}
