import SwiftUI

@main
struct Blending_iOSApp: App {
    var body: some Scene {
        WindowGroup {
            MainTapView()
                .accentColor(.red)
        }
    }
}
