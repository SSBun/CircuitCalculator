//
//  CalculatorType.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import Foundation
import SwiftUI

enum CalculatorType: Int, CaseIterable, Identifiable {
    var id: Int { self.rawValue }
    case resister
}

extension CalculatorType {
    var title: String {
        switch self {
        case .resister:
            return "电阻"
        }
    }
}
