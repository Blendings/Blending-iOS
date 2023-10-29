//
//  OtherView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/29/23.
//

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
