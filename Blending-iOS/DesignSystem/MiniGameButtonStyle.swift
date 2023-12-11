import SwiftUI

struct MiniGameButtonStyle: ButtonStyle {
    var color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 150, height: 40)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

