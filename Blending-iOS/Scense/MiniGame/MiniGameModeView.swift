import SwiftUI

struct MiniGameModeView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(MiniGameMode.sample) { mm in
                    MiniGameModeLinkView(miniGameModel: mm)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16.0)
        }
    }
}

struct MiniGameModeLinkView: View {
    let miniGameModel: MiniGameMode

    var body: some View {
        NavigationLink(destination: miniGameModel.destinationView) {
            MiniGameModeSectionItemView(miniGameModel: miniGameModel)
        }
    }
}

struct MiniGameModeSectionItemView: View {
    let miniGameModel: MiniGameMode
    
    var body: some View {
        VStack {
            miniGameModel.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 180.0, height: 180.0)
            Text(miniGameModel.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title2KyoboHandWriting)
        }
        .frame(maxWidth: .infinity)
    }
}
