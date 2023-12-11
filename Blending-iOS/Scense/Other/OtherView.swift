import SwiftUI

struct OtherView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(Menu.allCases) { section in
                    Section(
                        header: Text(section.title)
                    ) {
                        ForEach(section.menu, id: \.hashValue) { raw in
                            if let serviceCase = Menu.Service(rawValue: raw) {
                                NavigationLink(raw, destination: serviceCase.viewForServiceCase(serviceCase))
                            } else {
                                if let serviceCase = Menu.Service(rawValue: raw) {
                                    NavigationLink(raw, destination: serviceCase.viewForServiceCase(serviceCase))
                                } else {
                                    NavigationLink(raw, destination: Text("\(raw)"))
                                }
                            }
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
