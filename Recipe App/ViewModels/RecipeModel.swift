//
//  RecipeModel.swift
//  Recipe App
//
//  Created by William on 29/06/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    init() {
        self.recipes = DataService.getLocalData()
    }

}
