//
//  EventsSectionView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(Event.sample) { e in
                    EventsSectionItemView(event: e)
                }
            }.padding(.horizontal, 16.0)
        }
    }
}

struct EventsSectionItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            event.image
                .resizable()
                .scaledToFill()
                .frame(height: 150.0)
                .clipped()
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.headline)
            Text(event.description)
                .lineLimit(1)
                .font(.callout)
                .frame(maxWidth: .infinity, alignment: .topLeading)
        }.frame(width: UIScreen.main.bounds.width - 32.0)
    }
}

#Preview {
    EventsSectionView()
}
