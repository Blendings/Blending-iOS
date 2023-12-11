import SwiftUI
import UIKit

struct ChallengeModeDetailView: View {
    let challengeModeModel: ChallengeMode
    @State private var title: String = ""

    var body: some View {
        VStack {
            Text("뷰")
                .font(.title)
                .padding()
            
        }
        .onAppear {
            title = challengeModeModel.title
        }
        .navigationBarTitle("\(title)", displayMode: .inline)
    }
}

extension Image {
    func asUIImage() -> UIImage? {
        let uiImage = UIImage(systemName: "photo")
        return uiImage
    }
}
