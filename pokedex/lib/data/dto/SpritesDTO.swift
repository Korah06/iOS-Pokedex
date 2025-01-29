//
//  Sprites.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 29/1/25.
//

import Foundation

struct SpritesDTO : Codable{
    let backDefault: String?
    let backFemale: String?
    let backShiny: String?
    let backShinyFemale: String?
    let frontDefault: String
    let frontFemale: String?
    let frontShiny: String
    let frontShinyFemale: String?
}
