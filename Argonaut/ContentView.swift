//
//  ContentView.swift
//  Argonaut
//
//  Created by Ethan Shafran Moltz on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BudgetsView()
                .tabItem{
                    Image(systemName: "dollarsign.circle.fill")
                    Text("Budgets")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
