//
//  ContentView.swift
//  SwiftChartsTest
//
//  Created by Chelsea Hannah on 9/13/22.
//

import SwiftUI
import Foundation
import Charts

struct Item: Identifiable {
    var id = UUID()
    let type: String
    let value: Double
}


struct ContentView: View {
    //Variables
    let items: [Item] = [
    Item(type: "Engineering", value: 100),
    Item(type: "Design", value: 35),
    Item(type: "Operations", value: 72),
    Item(type: "Sales", value: 22),
    Item(type: "Management", value: 130)
    ]
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                //bar, line, area, ruler, point
                Chart(items) { item in
                    
                }
            }
            .navigationTitle("Charts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


