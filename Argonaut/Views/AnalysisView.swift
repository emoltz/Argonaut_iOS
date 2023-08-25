//
//  AnalysisView.swift
//  Argonaut
//
//  Created by Ethan Shafran Moltz on 8/25/23.
//

import SwiftUI
import Charts

struct ToyShape: Identifiable{
    var type: String
    var count: Double
    var id = UUID()
}

var data: [ToyShape] = [
    .init(type: "Cube", count: 5),
    .init(type:"Sphere", count: 4),
    .init(type: "Pyramid", count: 4)
]

struct AnalysisView: View {
    var body: some View {
        VStack{
            Chart {
                BarMark(
                    x: .value("Shape Type", data[0].type),
                    y: .value("Total Count", data[0].count)
                )
                BarMark(
                     x: .value("Shape Type", data[1].type),
                     y: .value("Total Count", data[1].count)
                )
                BarMark(
                     x: .value("Shape Type", data[2].type),
                     y: .value("Total Count", data[2].count)
                )
            }
            .padding()

            
        }
    }
}

struct AnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        AnalysisView()
    }
}
