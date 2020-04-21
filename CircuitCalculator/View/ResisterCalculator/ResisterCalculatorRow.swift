//
//  ResisterCalculatorRow.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import Foundation
import SwiftUI

extension ResisterCalculatorView {
    struct Row: View {
        let index: Int
        @EnvironmentObject var store: ResisterCalculatorView.Store
        
        var body: some View {
            HStack {
                Text("电阻\(index)")
                TextField("电阻值", text: $store.state.rows[index].value)
                    .frame(height: 30)
                    .padding(.leading, 5)
                    .background(Color.editBgColor)
                    .cornerRadius(5)
                    .keyboardType(.numberPad)
                Picker(selection: $store.state.rows[index].unit, label: Text("")) {
                    ForEach(ResisterCalculatorView.ResisterUnit.allCases, id: \.self) {
                        Text($0.title)
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
        }
    }
}

struct ResisterCalculatorRow_Previews: PreviewProvider {
    
    static var store: ResisterCalculatorView.Store {
        let store = ResisterCalculatorView.Store()
        store.state.rows = [("1000", .kilohm)]
        return store
    }
    
    static var previews: some View {
        ResisterCalculatorView.Row(index: 0).environmentObject(store)
    }
}
