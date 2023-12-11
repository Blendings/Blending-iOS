import SwiftUI

struct BlendingMeunSuggestionSectionView: View {
    var body: some View {
        VStack {
            Text("\(User.shared.username)님 이런 것은 어떤가요?")
                .font(.headlineKyoboHandWriting)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    ForEach(BlendingMeun.sample) { m in
                        BlendingMeunSuggestionItemView(meun: m)
                    }
                }
                .padding(.horizontal, 16.0)
            }
        }
    }
}

#Preview {
    BlendingMeunSuggestionSectionView()
}
