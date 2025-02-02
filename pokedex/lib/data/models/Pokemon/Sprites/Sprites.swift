//
//  Sprites.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class Sprites{
    let frontDefault: String?
    let frontShiny: String?
    let backDefault: String?
    let backShiny: String?
    
    init(dto: SpritesDTO){
        self.backDefault = dto.backDefault
        self.backShiny = dto.backShiny
        self.frontDefault = dto.frontDefault
        self.frontShiny = dto.frontShiny
    }
}
