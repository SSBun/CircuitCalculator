//
//  AppCommand.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import Foundation

protocol AppCommand {
    func execute(in store: Store)
}
