//
//  MainTab.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI

struct MainTab: View {
    var body: some View {
        TabView {
            CalculatorRootView()
                .tabItem {
                    Image(systemName: "wrench.fill")
                    Text("计算")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("设置")
            }
        }
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab().environmentObject(Store())
    }
}
