//
//  Types.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

import Foundation

@Observable
class TypesEntry: Identifiable {
    let slot: Int
    let type: NamedApiResource

    init(dto: TypeEntryDTO) {
        self.slot = dto.slot
        self.type = NamedApiResource(dto: dto.type)
    }
}
