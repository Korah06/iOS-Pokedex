//
//  Pokemon.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 2/2/25.
//

import SwiftUICore

class Pokemon : Identifiable{
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
    let stats: [StatsEntry]
    let types: [TypesEntry]
    
    init(dto: PokemonDTO) {
        self.name = dto.name
        self.id = dto.id
        self.baseExperience = dto.baseExperience
        self.abilities = dto.abilities.map { AbilityEntry(dto: $0) }
        self.forms = dto.forms.map { NamedApiResource(dto: $0)}
        self.height = dto.height
        self.weight = dto.weight
        self.gameIndices = dto.gameIndices.map {GameIndex(dto: $0)}
        self.heldItems = dto.heldItems.map {HeldItem(dto: $0)}
        self.isDefault = dto.isDefault
        self.order = dto.order
        self.locationAreaEncounters = dto.locationAreaEncounters
        self.sprites = Sprites(dto: dto.sprites)
        self.species = NamedApiResource(dto: dto.species)
        self.types = dto.types.map{TypesEntry(dto: $0)}
        self.stats = dto.stats.map{StatsEntry(dto: $0)}
    }
    
    func getColors() -> [Color]{
        var colors: [Color] = []
        self.types.forEach{ type in
            if type.type.name == Types.normal.rawValue{
                colors.append(.gray.opacity(0.7))
            }
            if type.type.name == Types.fire.rawValue{
                colors.append(.red)
            }
            if type.type.name == Types.water.rawValue{
                colors.append(.blue)
            }
            if type.type.name == Types.grass.rawValue{
                colors.append(.green)
            }
            if type.type.name == Types.electric.rawValue{
                colors.append(.yellow)
            }
            if type.type.name == Types.ice.rawValue{
                colors.append(.cyan)
            }
            if type.type.name == Types.fighting.rawValue{
                colors.append(.orange)
            }
            if type.type.name == Types.poison.rawValue{
                colors.append(.purple.opacity(0.7))
            }
            if type.type.name == Types.ground.rawValue{
                colors.append(.brown.opacity(0.7))
            }
            if type.type.name == Types.flying.rawValue{
                colors.append(.teal)
            }
            if type.type.name == Types.psychic.rawValue{
                colors.append(.pink)
            }
            if type.type.name == Types.bug.rawValue{
                colors.append(.green.opacity(0.7))
            }
            if type.type.name == Types.rock.rawValue{
                colors.append(.brown)
            }
            if type.type.name == Types.ghost.rawValue{
                colors.append(.purple)
            }
            if type.type.name == Types.dragon.rawValue{
                colors.append(.indigo)
            }
            if type.type.name == Types.dark.rawValue{
                colors.append(.black)
            }
            if type.type.name == Types.steel.rawValue{
                colors.append(.gray)
            }
            if type.type.name == Types.fairy.rawValue{
                colors.append(.pink.opacity(0.7))
            }
        }
        return colors
    }
}
