//
//  CalculatorListView.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI

struct CalculatorListView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack {
            ForEach(store.appState.calculatorList.calculators, id: \.self) { type in
                CalculatorRow(type: type)
            }
            Spacer()
        }
        .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct CalculatorListView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorListView().environmentObject(Store())
    }
}
