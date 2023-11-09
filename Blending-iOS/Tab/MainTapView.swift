import SwiftUI

var isUserLoggedIn = false

struct MainTapView: View {
    
    var body: some View {
        if isUserLoggedIn {
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
                ExRouletteView()
                    .tabItem {
                        Taps.roulette.imageItem
                        Taps.roulette.textItem
                    }
            }
        } else {
            OnboardingView()
        }
    }
}
#Preview {
    MainTapView()
}
