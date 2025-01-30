//
//  OtherSprites.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 30/1/25.
//

struct OtherSprites: Decodable {
    let officialArtwork: OfficialArtwork?
    
    enum CodingKeys: String, CodingKey {
        case officialArtwork = "official-artwork"
    }
}
