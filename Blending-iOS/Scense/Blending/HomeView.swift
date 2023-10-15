//
//  HomeView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
            BlendingMeunSuggestionSectionView()
            Spacer(minLength: 32.0)
            EventsSectionView()
        }
    }
}

#Preview {
    HomeView()
}
