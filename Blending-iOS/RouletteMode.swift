import SwiftUI

struct RouletteMode: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let destinationView: AnyView
    
    static let sample: [RouletteMode] = [
        RouletteMode(image: Image("sampleImage1"), title: "기본 벌칙", destinationView: AnyView(RouletteView2())),
        RouletteMode(image: Image("sampleImage1"), title: "커스텀 벌칙", destinationView: AnyView(ExRouletteView()))
    ]
}
