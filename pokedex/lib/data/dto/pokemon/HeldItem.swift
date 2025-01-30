//
//  HeldItem.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct HeldItem: Decodable {
    let item: NamedAPIResource
    let versionDetails: [VersionDetail]

    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails = "version_details"
    }
}
