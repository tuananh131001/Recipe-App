//
//  ContentView.swift
//  Recipe App
//
//  Created by William on 29/06/2022.
//

import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var recipeModel: RecipeModel
    var body: some View {
        NavigationView {
            List(recipeModel.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe), label: {
                        HStack {
                            Image(recipe.image).resizable().frame(width: 50.0, height: 50.0).clipped()

                            Text(recipe.name)
                        }
                    })


            }.navigationTitle("All Recipe ")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
