//
//  ChallengeModeView.swift
//  Blending-iOS
//
//  Created by 박준하 on 12/5/23.
//

import SwiftUI

struct ChallengeModeView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(ChallengeMode.sample) { mm in
                    ChallengeModeLinkView(challengeModeModel: mm)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(16.0)
        }
    }
}

struct ChallengeModeLinkView: View {
    let challengeModeModel: ChallengeMode

    var body: some View {
        NavigationLink(destination: challengeModeModel.destinationView) {
            ChallengeModeSectionItemView(challengeMode: challengeModeModel)
        }
    }
}

struct ChallengeModeSectionItemView: View {
    let challengeMode: ChallengeMode
    
    var body: some View {
        ZStack {
            challengeMode.image
                .resizable()
                .frame(width: 180.0, height: 180.0)
                .cornerRadius(20)
            
            Text(challengeMode.title)
                .foregroundColor(.white)
                .font(.title2KyoboHandWriting)
                .offset(y: 70)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}
