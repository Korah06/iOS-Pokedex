//
//  StatEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct StatEntryDTO: Decodable {
    let baseStat: Int?
    let effort: Int
    let stat: NamedAPIResourceDTO

}
