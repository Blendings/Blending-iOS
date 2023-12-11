import SwiftUI

public enum Taps {
    case home
    case blog
    case calender
    case diary
    case setting
    
    var textItem: Text {
        switch self {
        case .home: return Text("홈")
        case .blog: return Text("블로그")
        case .calender: return Text("캘린더")
        case .diary: return Text("일기")
        case .setting: return Text("세팅")

        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .blog: return Image(systemName: "heart.text.square.fill")
        case .calender: return Image(systemName: "calendar")
        case .diary: return Image(systemName: "note")
        case .setting: return Image(systemName: "gear")
        }
    }
}
