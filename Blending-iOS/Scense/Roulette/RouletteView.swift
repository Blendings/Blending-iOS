import SwiftUI

struct RouletteView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16.0) {
                RouletteHeaderView()
                RouletteModeView()
            }
        }
        .navigationBarTitle("Roulette", displayMode: .inline)
    }
}
#Preview {
    RouletteView()
}
