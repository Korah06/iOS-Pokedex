//
//  VersionDetail.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class VersionDetail{
    let rarity: Int
    let version: NamedApiResource
    
    init(dto:VersionDetailDTO){
        self.rarity = dto.rarity
        self.version = NamedApiResource(dto: dto.version)
    }
}
