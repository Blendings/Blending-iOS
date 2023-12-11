import SwiftUI

struct MiniGameMode: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let destinationView: AnyView
    
    static let sample: [MiniGameMode] = [
        MiniGameMode(image: Image("sampleImage1"), title: "홀짝 게임", destinationView: AnyView(StartOddOrEventView()))
    ]
}
