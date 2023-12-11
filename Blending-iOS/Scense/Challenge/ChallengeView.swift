import SwiftUI

struct ChallengeView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16.0) {
                ChallengeModeView()
            }
        }
        .navigationBarTitle("챌린지", displayMode: .inline)
    }
}
