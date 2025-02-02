//
//  Pokemon.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

class Pokemon {
    let id: Int
    let name: String
    let baseExperience: Int?
    let height: Int
    let isDefault: Bool?
    let order: Int
    let weight: Int
    let abilities: [AbilityEntry]
    let forms: [NamedApiResource]
    let gameIndices: [GameIndex]
    let heldItems: [HeldItem]
    let locationAreaEncounters: String?
    let species: NamedApiResource
    let sprites: Sprites
    let cries: Cries
    let stats: [StatEntry]
    let types: [TypeEntry]
    let pastTypes: [PastType]
    
    init(dto: PokemonDTO) {
        self.name = dto.name
        self.id = dto.id
        self.baseExperience = dto.baseExperience
        self.abilities = dto.abilities.map { AbilityEntry(dto: $0) }
        self.cries = dto.cries
        self.forms = dto.forms.map { NamedApiResource(dto: $0)}
        self.height = dto.height
        self.weight = dto.weight
        self.gameIndices = dto.gameIndices.map {GameIndex(dto: $0)}
        self.heldItems = dto.heldItems.map {HeldItem(dto: $0)}
        self.isDefault = dto.isDefault
        self.order = dto.order
        self.locationAreaEncounters = dto.locationAreaEncounters
        self.pastTypes = dto.pastTypes
        self.sprites = Sprites(dto: dto.sprites)
        self.species = NamedApiResource(dto: dto.species)
        self.types = dto.types
        self.stats = dto.stats
    }
}
