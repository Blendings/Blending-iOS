//
//  RouletteModeView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct RouletteModeView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(RouletteMode.sample) { rm in
                    RouletteModeSectionItemView(rouletteModel: rm)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16.0)
        }
    }
}

struct RouletteModeSectionItemView: View {
    let rouletteModel: RouletteMode
    
    var body: some View {
        VStack {
            rouletteModel.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 180.0, height: 180.0)
            Text(rouletteModel.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title2)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    RouletteModeView()
}
