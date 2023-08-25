import Foundation

struct Budget: Codable, Identifiable{
    let id: String
    let categoryName: String
    let amount: Double
    let isMonthly: Bool
    let isYearly: Bool
}


struct DateData{
    let month: Int
    let year: Int
    let monthName: String
}


