//
//  PokeError.swift
//  pokedex
//
//  Created by Mario Espasa Planells on 20/1/25.
//

import Foundation

enum PokeError: Error {
    case invalidURL
    case invalidResponse
    case decodingFailed
}
