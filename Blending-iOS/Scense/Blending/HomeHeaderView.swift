import SwiftUI

struct HomeHeaderView: View {
    var body: some View {
        VStack(spacing: 16.0) {
            HStack(alignment: .top) {
                Text("""
                \(User.shared.username)님!\n벌써 1일째입니다!
                """)
                .font(.largeTitleKyoboHandWriting)
                .frame(maxWidth: .infinity, alignment: .leading)
                Button(action: {}, label: {
                    Image(systemName: "arrow.2.circlepath")
                })
                .frame(alignment: .top)
                .fixedSize(horizontal: false, vertical: true)
            }
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "mail")
                        .foregroundColor(.black)
                    Text("정보")
                        .foregroundColor(.primary)
                        .font(.subheadlineKyoboHandWriting)
                })
                Button(action: {}, label: {
                    Image(systemName: "ticket")
                        .foregroundColor(.black)
                    Text("쿠폰")
                        .foregroundColor(.primary)
                        .font(.subheadlineKyoboHandWriting)
                })
                Spacer()
                Button(action: {}) {
                    Image(systemName: "bell")
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(16.0)
    }
}

#Preview {
    HomeHeaderView()
}
