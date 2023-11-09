import SwiftUI

struct OtherView: View {
    var body: some View {
        NavigationView {
            List {
                
            }
            .navigationTitle("Other")
            .toolbar {
                NavigationLink(destination: Text("destination"), label: {
                    Image(systemName: "gear")
                })
            }
        }
    }
}

#Preview {
    OtherView()
}
