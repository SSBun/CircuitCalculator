//
//  ResisterCalculatorView.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI
import Combine

struct ResisterCalculatorView: View {
    
    @EnvironmentObject var store: ResisterCalculatorView.Store
    
    var rows: [(Int, (value: String, unit: ResisterUnit))] { Array(zip(0...9999, store.state.rows)) }
    
    var body: some View {
        VStack {
            ForEach(rows, id: \.0) { row in
                Row(index: row.0)
            }
            Button(action: {
                self.store.dispatch(ResisterCalculatorView.Action.newRow)
            }, label: {
                Text("Add")
            })
            Spacer()
        }
        .padding(.top, 20)
    }
}

struct ResisterCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        ResisterCalculatorView().environmentObject(ResisterCalculatorView.Store())
    }
}

extension ResisterCalculatorView {
    class Store: ObservableObject {
        @Published var state = ResisterCalculatorView.ViewState()
        
        static func reduce(_ state: ResisterCalculatorView.ViewState,
                           _ action: ResisterCalculatorView.Action)
            -> ResisterCalculatorView.ViewState {
            var state = state
            switch action {
            case .newRow:
                state.rows.append(("0", .ohm))
                print("")
            }
            return state
        }
        
        func dispatch(_ action: ResisterCalculatorView.Action) {
            #if DEBUG
            print("[RESISTER_CALCULATOR_ACTION]: \(action)")
            #endif
            state = Store.reduce(state, action)
        }
    }
    
    struct ViewState {
        var rows: [(value: String, unit: ResisterUnit)] = []
    }
    
    enum ResisterUnit: CaseIterable {
        case ohm
        case kilohm
        case megohm
        
        var title: String {
            switch self {
            case .ohm:
                return "Ω"
            case .kilohm:
                return "KΩ"
            case .megohm:
                return "MΩ"
            }
        }
    }
    
    enum Action {
//        case removeRow(index: Int)
//        case renewRow(index: Int, value: String, unit: Unit)
        case newRow
    }
}
