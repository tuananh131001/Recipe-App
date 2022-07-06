//
//  DataService.swift
//  Recipe App
//
//  Created by William on 06/07/2022.
//

import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        if let path = pathString {
            // Create a url object
            let url = URL(fileURLWithPath: path)
            //Error handling
            do {
                let data = try Data(contentsOf: url)
                //Parse the data
                let decoder = JSONDecoder()
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    for r in recipeData {
                        r.id = UUID()
                        for i in r.ingredients {
                            i.id = UUID()
                        }
                    }
                    return recipeData
                } catch {
                    print(error)
                }
            }
            catch {
                // execution will come here if an error is thrown
                print(error)
            }

        }
        return [Recipe]()
    }
}
