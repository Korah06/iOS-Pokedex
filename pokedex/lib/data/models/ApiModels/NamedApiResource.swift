//
//  NamedApiResource.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class NamedApiResource{
    let name: String
    let url: String
    
    init(dto: NamedAPIResourceDTO){
        self.name = dto.name
        self.url = dto.url
    }
}
