//
//  Store.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import Foundation
import Combine

class Store: ObservableObject {
    
    @Published var appState = AppState()
    
    static func reduce(state: AppState, action: AppAction) -> (AppState, AppCommand?) {
        var state = state
        var command: AppCommand?
        switch action {
        case .openCalculator(let type):
            state.calculatorList.showCalculator = type
        }
        
        return (state, command)
    }
    
    func dispatch(_ action: AppAction) {
        #if DEBUG
        print("[ACTION]: \(action)")
        #endif
        let result = Store.reduce(state: appState, action: action)
        appState = result.0
        
        if let command = result.1 {
            command.execute(in: self)
        }
    }

}
