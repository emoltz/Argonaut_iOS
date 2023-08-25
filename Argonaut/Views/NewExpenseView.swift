import SwiftUI

struct NewExpenseView: View {
    @State private var name: String = ""
    @State private var amount: Double = 0.00
    @State private var category: String = ""
    @State private var isMonthly: Bool = false
    @State private var isYearly: Bool = false
    @State private var selectedFrequency: String = "once"
    var currencyFormatter: NumberFormatter = {
           let formatter = NumberFormatter()
           formatter.numberStyle = .currency
           formatter.currencySymbol = "$"
           return formatter
       }()
    
    var body: some View {
        VStack {
            Form {
                TextField("Name", text: $name)
                TextField("Amount", value: $amount, formatter: currencyFormatter)
                    .keyboardType(.decimalPad)
                    

                // TODO add money support
                
                // Replace with your custom CategoryPicker
//                CategoryPicker(category: $category)
                Picker("Frequency", selection: $selectedFrequency) {
                    Text("Once").tag("once")
                    Text("Monthly").tag("monthly")
                    Text("Yearly").tag("yearly")
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            Button(action: submitForm) {
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add new expense")
                }
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.blue, lineWidth: 1)
            )
        }
        .padding()
    }
    
    func submitForm() {
        // Perform form validation here
        // ...
        
        // Create new ExpenseClass instance and send to Firebase
        // ...
    }
}


struct NewExpenseView_Preview: PreviewProvider{
    static var previews: some View {
        NewExpenseView()
    }
}
