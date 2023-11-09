import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            HStack {
                NavigationLink(destination: SignUpView()) {
                    Text("회원가입")
                }
                NavigationLink(destination: LoginView()) {
                    Text("로그인")
                }
            }
        }
    }
}

#Preview {
    OnboardingView()
}
