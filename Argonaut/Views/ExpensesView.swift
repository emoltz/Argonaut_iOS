import SwiftUI



struct ExpensesView: View {
    @State private var expenses: [Expense] = [
        Expense(id: "1", name: "rent", amount: 100.50, vendor: "n/a", description: "description", budget: "Home", budgetID: "1", category: "Home", month: 9, year: 2023, isYearly: false, isMonthly: false),
        Expense(id: "2", name: "another one", amount: 5, vendor: "n/a", description: "description", budget: "Home", budgetID: "1", category: "Activities", month: 9, year: 2023, isYearly: false, isMonthly: false),
        
    ]
    
    @State private var selection: Set<String> = []
    
    
    var body: some View {
        VStack{
            List(expenses){ expense in
                HStack{
                    Text(expense.name)
                    Spacer()
                    Text(expense.category)
                }
            }
        }
        }
}


struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView()
    }
}
