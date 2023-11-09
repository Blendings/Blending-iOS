import SwiftUI

struct CoupleShareView: View {
    @State private var myCode = ""
    @State private var opponentCode = ""
    @State private var isNextViewActive = false

    var body: some View {
        NavigationLink(destination: ProfileSettingView(), isActive: $isNextViewActive) {
            EmptyView()
        }
        .hidden()

        
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                Text("서로에 코드를 공유해주세요 ❤️")
                    .font(.title)
                    .lineSpacing(10)
                Text("내 초대 코드")
                    .font(.footnote)
                    .padding(.bottom, 10)
                CustomAuthTextField(placeholder: "나의 초대 코드", text: $myCode)
                    .keyboardType(.emailAddress)
                Text("상대방 초대 코드를 넣어주세요")
                    .font(.footnote)
                    .padding(.bottom, 10)
                CustomAuthTextField(placeholder: "패스워드", text: $opponentCode)

                HStack {
                    Spacer()
                    Button(action: {
                        print("email: \(myCode)\npassword: \(opponentCode)")
                        isNextViewActive = true
                    }) {
                        Text("회원가입")
                            .font(.title)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
}

#Preview {
    CoupleShareView()
}
