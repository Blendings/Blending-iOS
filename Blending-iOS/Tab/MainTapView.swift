import SwiftUI

struct MainTapView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Taps.home.imageItem
                    Taps.home.textItem
                }
            OtherView()
                .tabItem {
                    Taps.setting.imageItem
                    Taps.setting.textItem
                }
        }
    }
}

#Preview {
    MainTapView()
}
