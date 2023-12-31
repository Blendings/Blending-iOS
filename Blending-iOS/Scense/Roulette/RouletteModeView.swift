import SwiftUI

struct RouletteModeView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(RouletteMode.sample) { rm in
                    RouletteModeLinkView(rouletteModel: rm)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16.0)
        }
    }
}

struct RouletteModeLinkView: View {
    let rouletteModel: RouletteMode

    var body: some View {
        NavigationLink(destination: rouletteModel.destinationView) {
            RouletteModeSectionItemView(rouletteModel: rouletteModel)
        }
    }
}

struct RouletteModeSectionItemView: View {
    let rouletteModel: RouletteMode
    
    var body: some View {
        VStack {
            rouletteModel.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 180.0, height: 180.0)
            Text(rouletteModel.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title2KyoboHandWriting)
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    RouletteModeView()
}
