import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView(.vertical) {
            HomeHeaderView()
            BlendingMeunSuggestionSectionView()
            Spacer(minLength: 32.0)
            EventsSectionView()
        }
        .background(Image("BackgroundImage"))
    }
}

#Preview {
    HomeView()
}
