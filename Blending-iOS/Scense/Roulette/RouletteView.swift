import SwiftUI

struct RouletteView: View {
    var body: some View {
        ScrollView(.vertical) {
            RouletteHeaderView()
            RouletteModeView()
        }
    }
}

#Preview {
    RouletteView()
}
