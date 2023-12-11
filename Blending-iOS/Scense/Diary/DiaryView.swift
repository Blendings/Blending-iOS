import SwiftUI

struct DiaryView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("SwiftUI Diary")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Welcome to our SwiftUI Diary.")
                .font(.body)
            
            Spacer()
        }
        .padding()
        .background(Image("BackgroundImage"))
    }
}

#Preview {
    DiaryView()
}
