import SwiftUI

struct OtherView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            NavigationLink(raw, destination: Text("\(raw)"))
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .font(.title3KyoboHandWriting)
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(
                    destination: SettingView(),
                    label: {
                        Image(systemName: "gear")
                    })
            }
        }
    }
}

#Preview {
    OtherView()
}
