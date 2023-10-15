//
//  BlendingMeunSuggestionItemView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct BlendingMeunSuggestionItemView: View {
    var body: some View {
        VStack {
            Image("sampleImage1")
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text("샘플 이미지")
                .font(.caption)
        }
    }
}
