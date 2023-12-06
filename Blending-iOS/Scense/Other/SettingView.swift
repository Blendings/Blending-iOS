import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            Section {
                SettingUserInfoSectionView()
            }
            Button("회원 정보 수정") {}
                .accentColor(.black)
                .font(.title3KyoboHandWriting)
            Button("이별") {}
                .accentColor(.black)
                .font(.title3KyoboHandWriting)
        }
            .navigationTitle("설정")
            .listStyle(GroupedListStyle())
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SettingUserInfoSectionView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4.0) {
                Text(User.shared.username)
                    .font(.titleKyoboHandWriting)
                Text(User.shared.account)
                    .font(.captionKyoboHandWriting)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("로그아웃")
                    .accentColor(.green)
                    .font(.footnoteKyoboHandWriting)
            }
            .padding(8.0)
            .overlay(Capsule().stroke(Color.green))
        }
        .background(Image("BackgroundImage"))
    }
}

#Preview {
    SettingView()
}
