//
//  Recipe.swift
//  Recipe App
//
//  Created by William on 29/06/2022.
//

import Foundation

class Recipe: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [Ingredients]
    var directions: [String]

}
class Ingredients: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var num: Int?
    var unit: String?
}
