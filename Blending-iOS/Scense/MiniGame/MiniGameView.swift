import SwiftUI

struct MiniGameView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16.0) {
                MiniGameHeaderView()
                MiniGameModeView()
            }
        }
        .navigationBarTitle("미니게임", displayMode: .inline)
    }
}
#Preview {
    RouletteView()
}
