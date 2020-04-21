//
//  SettingsRootView.swift
//  CircuitCalculator
//
//  Created by caishilin on 2020/4/21.
//  Copyright © 2020 caishilin. All rights reserved.
//

import SwiftUI

struct SettingsRootView: View {
    var body: some View {
        NavigationView() {
            SettingsView()
            .navigationBarTitle("设置")
        }
    }
}


struct SettingsRootView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRootView().environmentObject(Store())
    }
}
