import SwiftUI


struct BudgetCard: View{
    let budgetName: String
    let budgetAmount: Double
    let spent: Double
    let iconName: String
    var progressPercentage: Double {
        return (spent / budgetAmount) * 100
    }
    var body: some View{
        VStack(alignment: .center){
            Image(systemName: iconName)
                .imageScale(.large)
                
//                .foregroundColor(.green)
            Text(budgetName)
                .font(.title)
                .fontWeight(.bold)
                .padding(3)
            Text("$\(budgetAmount, specifier: "%.2f") / month")
                .font(.caption)
                .foregroundColor(.gray)
            HStack {
                Text("Progress")
                    .font(.caption)
                    .foregroundColor(.gray)
                Spacer()
                Text("\(progressPercentage, specifier: "%.1f")%")
                        .font(.caption)
                      .foregroundColor(.gray)
            }
            ProgressView(value: spent, total: budgetAmount)
                .padding(.bottom)
            
            HStack{
                Spacer()
                Text("$\(budgetAmount - spent, specifier: "%.2f") left")
                    .font(.caption)
                    .padding(5)
                    .background(spent <= budgetAmount ? .green : .red)
                    .foregroundColor(.white)
                    .cornerRadius(5)

            }
            .padding()

        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: .gray, radius: 5, x: 0, y: 3)

    }
    
}

struct BudgetCard_Previews: PreviewProvider{
    static var previews: some View {
        BudgetCard(budgetName: "Personal", budgetAmount: 500.00, spent: 334.44, iconName: "creditcard.fill")
            .padding()
    }
}

