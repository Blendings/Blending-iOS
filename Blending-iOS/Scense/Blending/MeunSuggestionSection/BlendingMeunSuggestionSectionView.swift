//
//  BlendingMeunSuggestionSectionView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct BlendingMeunSuggestionSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(BlendingMeun.sample) { m in
                    BlendingMeunSuggestionItemView(meun: m)
                }
            }
        }
    }
}

#Preview {
    BlendingMeunSuggestionSectionView()
}
