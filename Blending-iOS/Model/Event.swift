import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let description: String
    
    static let sample: [Event] = [
        Event(image: Image("sampleImage1"), title: "오늘이 무슨날인지 알아?", description: "지금의 추억을 간직해보세요"),
        Event(image: Image("sampleImage1"), title: "빼뺴로 데이", description: "연인에게 뺴뺴로를 받아보세요!"),
    ]
}
