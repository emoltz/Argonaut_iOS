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
            ExpensesView()
                .tabItem{
                    Image(systemName: "creditcard.fill")
                    Text("Expenses")
                }
            NewExpenseView()
                .tabItem{
                    Image(systemName:"plus.circle.fill")
                    Text("Add Expense")
                }
            AnalysisView()
                .tabItem{
                    Image(systemName: "chart.pie.fill")
                    Text("Analysis")
                }
            SettingsView()
                .tabItem{
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
