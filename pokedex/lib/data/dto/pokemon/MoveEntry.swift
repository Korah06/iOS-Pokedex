//
//  MoveEntry.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct MoveEntry: Decodable {
    let move: NamedAPIResource
    let versionGroupDetails: [VersionGroupDetail]?

    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails = "version_group_details"
    }
}
