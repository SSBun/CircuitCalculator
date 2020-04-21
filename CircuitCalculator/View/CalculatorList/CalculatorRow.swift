//
//  CalculatorRow.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI

struct CalculatorRow: View {
    
    @EnvironmentObject var store: Store
    let type: CalculatorType
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.cellBgColor)
                .frame(height: 44)
            Text(type.title)
                .font(.headline)
                .foregroundColor(.primary)
        }
        .onTapGesture {
            self.store.dispatch(.openCalculator(self.type))
        }
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(type: .resister).environmentObject(Store())
    }
}
