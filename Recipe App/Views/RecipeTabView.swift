//
//  RecipeTabView.swift
//  Recipe App
//
//  Created by William on 06/07/2022.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        TabView{
            Text("Feature View")
                .tabItem{
                    VStack{
                        Image(systemName: "star.fill")
                        Text("Features")
                    }
                }
            ContentView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
