import SwiftUI

struct MiniGameHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                우리 어떤 게임 할까요?
                """)
                .font(.largeTitleKyoboHandWriting)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .padding(16.0)
    }
}
