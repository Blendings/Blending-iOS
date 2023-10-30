//
//  RouletteHeaderView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct RouletteHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                어떤 벌칙으로 할까요?
                """)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(16.0)
    }
}

#Preview {
    RouletteHeaderView()
}
