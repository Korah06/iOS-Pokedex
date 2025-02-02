//
//  HeldItem.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class HeldItem{
    let item: NamedApiResource
    let versionDetails: [VersionDetail]
    
    init(dto: HeldItemDTO){
        self.item = NamedApiResource(dto: dto.item)
        self.versionDetails = dto.versionDetails.map(VersionDetail.init)
    }
}
