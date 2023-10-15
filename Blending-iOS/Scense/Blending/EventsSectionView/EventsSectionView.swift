//
//  EventsSectionView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct EventsSectionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Event")
                    .font(.headline)
                Spacer()
                Button("모두 보기") {}
                    .accentColor(.red)
                    .font(.subheadline)
            }
            .padding(.horizontal, 16.0)
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 16.0) {
                    ForEach(Event.sample) { e in
                        EventsSectionItemView(event: e)
                    }
                }
                .frame(maxWidth: .infinity, minHeight: 220.0, maxHeight: .infinity)
                .padding(.horizontal, 16.0)
            }
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
