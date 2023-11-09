import SwiftUI

struct AuthButton: View {
    let text: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.bold(.title)())
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .frame(width: 150, height: 50)
        }
    }
}

#Preview {
    AuthButton(text: "회원 가입") {
        print("안녕")
    }
}
