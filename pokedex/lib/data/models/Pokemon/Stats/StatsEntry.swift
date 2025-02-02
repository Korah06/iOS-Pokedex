//
//  StatsEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class StatsEntry{
    let baseStat: Int?
    let effort: Int
    let stat: NamedApiResource
    
    init(dto:StatEntryDTO){
        self.baseStat = dto.baseStat
        self.effort = dto.effort
        self.stat = NamedApiResource(dto: dto.stat)
    }
}
