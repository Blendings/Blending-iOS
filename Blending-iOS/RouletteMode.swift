import SwiftUI

struct RouletteMode: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    
    static let sample: [RouletteMode] = [
        RouletteMode(image: Image("sampleImage1"), title: "기본 벌칙"),
        RouletteMode(image: Image("sampleImage1"), title: "커스텀 벌칙")
    ]
}
