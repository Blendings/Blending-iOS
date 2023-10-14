import SwiftUI

struct MainTapView: View {
    var body: some View {
        TabView {
            Text("홈")
                .tabItem {
                    Taps.home.imageItem
                    Taps.home.textItem
                }
            Text("설정")
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
