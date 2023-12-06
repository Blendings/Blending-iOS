import SwiftUI

var isUserLoggedIn = false

struct MainTapView: View {
    
    var body: some View {
        TabView {
//            HomeView()
//                .tabItem {
//                    Taps.home.imageItem
//                    Taps.home.textItem
//                }
//            
//            BlogView()
//                .tabItem {
//                    Taps.blog.imageItem
//                    Taps.blog.textItem
//                }
//            
//            CalenderView()
//                .tabItem {
//                    Taps.calender.imageItem
//                    Taps.calender.textItem
//                }
//            
//            DiaryView()
//                .tabItem {
//                    Taps.diary.imageItem
//                    Taps.diary.textItem
//                }
//            
//            OtherView()
//                .tabItem {
//                    Taps.setting.imageItem
//                    Taps.setting.textItem
//                }
            ChallengeView()
        }
    }
}
#Preview {
    MainTapView()
}
