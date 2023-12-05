//
//  CalenderView.swift
//  Blending-iOS
//
//  Created by 박준하 on 12/5/23.
//

import SwiftUI

struct CalenderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("SwiftUI CalenderView")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Welcome to our SwiftUI CalenderView.")
                .font(.body)
            
            Spacer()
        }
        .padding()
        .background(Image("BackgroundImage"))
    }
}

#Preview {
    CalenderView()
}
