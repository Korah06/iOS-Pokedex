//
//  AbilityEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class AbilityEntry{
    let isHidden: Bool?
    let slot: Int
    let ability: NamedApiResource
    
    init(dto:AbilityEntryDTO){
        self.isHidden = dto.isHidden
        self.slot = dto.slot
        self.ability = NamedApiResource(dto: dto.ability)
    }
}
