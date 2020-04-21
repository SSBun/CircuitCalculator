//
//  AppState.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import Foundation
import SwiftUI

struct AppState {
    var calculatorList = CalculatorList()
    var settings = Settings()
}

extension AppState {
    struct CalculatorList {
        var calculators: [CalculatorType] = CalculatorType.allCases
        var showCalculator: CalculatorType?
    }
}

extension AppState {
    struct Settings {
        
    }
}
