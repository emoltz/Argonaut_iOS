import Foundation

struct Budget: Codable, Identifiable{
    let id: String
    let categoryName: String
    let amount: Double
    let isMonthly: Bool
    let isYearly: Bool
}

struct BudgetCalculated: Codable, Identifiable{
    let id: Int
    let category: String
    let budgetAmount: Double
    let spent: Double
    let icon: String
}

struct DateData: Codable{
    let month: Int
    let year: Int
    let monthName: String
}

struct MonthSummary: Codable{
    let month: Int
    let year: Int
    let monthTotal: Int
    let categoryTotals: Dictionary<String, Int>
}

struct Expense: Codable, Identifiable{
    let id: String
    let name: String
    let amount: Double
    let vendor: String
    let description: String
    let budget: String
    let budgetID: String
    let category: String
    let month: Int
    let year: Int
    let isYearly: Bool
    let isMonthly: Bool
}
