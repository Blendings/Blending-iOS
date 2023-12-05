import Foundation
import SwiftUI

public enum Menu: String, CaseIterable, Identifiable {
    case service = "서비스"
    case sh = "공유"
    case terms = "약관 및 정책"

    var title: String { rawValue }
    public var id: String { rawValue }

    var menu: [String] {
        switch self {
        case .service: return Service.allCases.map { $0.title }
        case .sh: return SH.allCases.map { $0.title }
        case .terms: return Terms.allCases.map { $0.title }
        }
    }

    public enum Service: String, CaseIterable, Identifiable {
        case penalty = "벌칙"
        case miniGame = "미니게임"
        case memo = "메모"
        case receipt = "영수증"
        case bucketList = "버킷리스트"
        case theme = "테마 변경"
        case appLogo = "앱 로고 변경"

        var title: String { rawValue }
        public var id: String { rawValue }
        
        public func viewForServiceCase(_ serviceCase: Menu.Service) -> some View {
            switch serviceCase {
            case .penalty:
                return AnyView(RouletteView())
            case .miniGame:
                return AnyView(Text("Placeholder for \(serviceCase.title)"))
            default:
                return AnyView(Text("Placeholder for \(serviceCase.title)"))
            }
        }
    }

    enum SH: String, CaseIterable, Identifiable {
        case shareFriends = "친구에게 공유하기"

        var title: String { rawValue }
        var id: String { rawValue }
    }

    enum Terms: String, CaseIterable, Identifiable {
        case terms = "이용약관"
        case privacyTerms = "개인정보 처리 방침"
        case version = "버전"

        var title: String { rawValue }
        var id: String { rawValue }
    }
}
