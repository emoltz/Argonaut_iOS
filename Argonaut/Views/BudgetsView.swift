//
//  BudgetsView.swift
//  Argonaut
//
//  Created by Ethan Shafran Moltz on 8/25/23.
//

import SwiftUI

let dummyData: [BudgetCalculated] = [
    BudgetCalculated(id: 1, category: "Activities", budgetAmount: 500, spent: 300, icon: "figure.strengthtraining.functional"),
    BudgetCalculated(id: 2, category: "Transportation", budgetAmount: 300, spent: 124, icon: "figure.walk"),
]

let currentMonth = "August"
let currentYear = "2023"

struct BudgetsView: View {
    var body: some View {
        VStack{
            ScrollView{
                VStack {
                    Text("Budgets")
                        .font(.title)
                    HStack{
                        Text(currentMonth)
                            .font(.subheadline)
                        Text(currentYear)
                            .font(.subheadline)
                    }
                }
                VStack(spacing: 0.0){
                    ForEach(dummyData) { categoryBudget in
                        BudgetCard(budgetName: categoryBudget.category, budgetAmount: categoryBudget.budgetAmount, spent: categoryBudget.spent, iconName: categoryBudget.icon)
                    }
                    .padding(8)
                }
                .padding()
            }
        }
    }
}

struct BudgetsView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetsView()
    }
}
