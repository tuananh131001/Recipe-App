//
//  RecipeDetailView.swift
//  Recipe App
//
//  Created by William on 04/07/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    var recipe: Recipe

    var body: some View {
        ScrollView {
            VStack {
                Image(recipe.image).resizable().scaledToFill()
                // MARK : Ingredient
                VStack(alignment: .leading) {
                    Text("Ingredients").font(.headline).padding(.vertical, 5)
                    ForEach(recipe.ingredients, id: \.self) { item in
                        Text("😌" + item) .padding(.bottom, 5)
                    }
                }.padding()
                Divider()
                
                //MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions").font(.headline).padding(.vertical,5)
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text(String(index + 1) + "." + recipe.directions[index]).padding(.bottom,5)
                    }
                }
                .padding(.horizontal, 10.0)
            }

        }.navigationBarTitle(Text(recipe.name))
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
