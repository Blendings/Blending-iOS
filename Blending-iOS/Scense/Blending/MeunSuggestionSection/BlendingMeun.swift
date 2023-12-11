import SwiftUI

public struct BlendingMeun: Identifiable {
    let image: Image
    let name: String
    
    public let id = UUID()
    
    static let sample: [BlendingMeun] = [
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지1"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지2"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지3"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지4"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지5"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지6")
    ]
}
