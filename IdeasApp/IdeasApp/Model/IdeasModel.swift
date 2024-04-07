//
//  IdeasModel.swift
//  IdeasApp
//
//  Created by Wiktor Witkowski on 14/03/2024.
//

import Foundation


// MARK: - Welcome
struct Welcome: Codable, Identifiable {
    let id = UUID()
    let type: String
    let value: [Value]
}

// MARK: - Value
struct Value: Codable, Identifiable {
    let id: Int
    let joke: String
    let categories: [String]
}



//https://www.boredapi.com/api/activity
