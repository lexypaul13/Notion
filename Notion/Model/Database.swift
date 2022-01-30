//
//  Database.swift
//  Notion
//
//  Created by Alex Paul on 1/29/22.
//

import Foundation

struct Database: Codable {
    let object: String
    let results: [Result]
    
    enum CodingKeys: String, CodingKey {
        case object = "object"
        case results = "results"
    }
}

// MARK: - Result
struct Result: Codable {
    let properties: Properties
    
    enum CodingKeys: String, CodingKey {
        case properties = "properties"
    }
}

// MARK: - Properties
struct Properties: Codable {
    let tags: Tags
    let name: Name

    enum CodingKeys: String, CodingKey {
        case tags = "Tags"
        case name = "Name"
    }
}

// MARK: - Name
struct Name: Codable {
    let title: [Title]
    enum CodingKeys: String, CodingKey {
        case title = "title"
    }
}

// MARK: - Title
struct Title: Codable {
    let text: Text
    let plainText: String

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case plainText = "plain_text"
    }
}
// MARK: - Text
struct Text: Codable {
    let content: String

    enum CodingKeys: String, CodingKey {
        case content = "content"
    }
}

// MARK: - Tags
struct Tags: Codable {
    let multiSelect: [MultiSelect]
    enum CodingKeys: String, CodingKey {
        case multiSelect = "multi_select"
    }
}

// MARK: - MultiSelect
struct MultiSelect: Codable {
    let id: String
    let name: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
    }
}
