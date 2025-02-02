//
//  GameIndex.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class GameIndex{
    let gameIndex: Int
    let version: NamedApiResource
    
    init(dto:GameIndexDTO){
        self.gameIndex = dto.gameIndex
        self.version = NamedApiResource(dto: dto.version)
    }
}
