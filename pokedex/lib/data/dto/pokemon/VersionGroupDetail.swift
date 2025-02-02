//
//  VersionGroupDetail.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct VersionGroupDetail: Decodable {
    let levelLearnedAt: Int
    let versionGroup: NamedAPIResourceDTO
    let moveLearnMethod: NamedAPIResourceDTO

    enum CodingKeys: String, CodingKey {
        case levelLearnedAt = "level_learned_at"
        case versionGroup = "version_group"
        case moveLearnMethod = "move_learn_method"
    }
}
