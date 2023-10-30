//
//  RouletteView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct RouletteView: View {
    var body: some View {
        ScrollView(.vertical) {
            RouletteHeaderView()
            RouletteModeView()
        }
    }
}

#Preview {
    RouletteView()
}
