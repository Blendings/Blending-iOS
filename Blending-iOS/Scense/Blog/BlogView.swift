import SwiftUI

struct BlogView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("SwiftUI Blog")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Welcome to our SwiftUI blog.")
                .font(.body)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    BlogView()
}
