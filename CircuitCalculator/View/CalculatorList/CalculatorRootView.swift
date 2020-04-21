//
//  CalculatorRootView.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI

struct CalculatorRootView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        NavigationView {
            CalculatorListView()
                .padding(.top, 20)
                .navigationBarTitle("计算器")
        }
        .sheet(item: $store.appState.calculatorList.showCalculator) { type in
            if type == .resister {
                ResisterCalculatorView().environmentObject(ResisterCalculatorView.Store())
            } else {
                EmptyView()
            }
        }
    }
}

struct CalculatorRootView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRootView().environmentObject(Store())
    }
}
