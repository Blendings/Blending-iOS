import SwiftUI

struct BlendingMeunSuggestionItemView: View {
    var meun: BlendingMeun
    
    var body: some View {
        VStack {
            meun.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 100.0, height: 100.0)
            Text(meun.name)
                .font(.caption)
        }
    }
}
