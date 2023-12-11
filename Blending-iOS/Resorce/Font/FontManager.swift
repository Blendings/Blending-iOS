import SwiftUI

extension Font {
    enum KyoboHandWriting {
        case font

        var value: String {
            switch self {
            case .font:
                return "KyoboHandwriting2019"
            }
        }
    }

    static let largeTitleKyoboHandWriting: Font = .poppins(.font, size: 32)
    static let titleKyoboHandWriting: Font = .poppins(.font, size: 24)
    static let title2KyoboHandWriting: Font = .poppins(.font, size: 22)
    static let title3KyoboHandWriting: Font = .poppins(.font, size: 20)
    static let headlineKyoboHandWriting: Font = .poppins(.font, size: 17)
    static let subheadlineKyoboHandWriting: Font = .poppins(.font, size: 16)
    static let bodyKyoboHandWriting: Font = .poppins(.font, size: 17)
    static let calloutKyoboHandWriting: Font = .poppins(.font, size: 16)
    static let footnoteKyoboHandWriting: Font = .poppins(.font, size: 14)
    static let captionKyoboHandWriting: Font = .poppins(.font, size: 12)
    static let caption2KyoboHandWriting: Font = .poppins(.font, size: 11)

    static func poppins(_ type: KyoboHandWriting, size: CGFloat = 17) -> Font {
        return .custom(type.value, size: size)
    }
}
