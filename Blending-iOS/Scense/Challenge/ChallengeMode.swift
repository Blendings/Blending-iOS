//
//  ChallengeMode.swift
//  Blending-iOS
//
//  Created by 박준하 on 12/5/23.
//

import SwiftUI

struct ChallengeMode: Identifiable {
    let id = UUID()
    
    let image: Image
    let title: String
    let destinationView: AnyView? = AnyView(_fromValue: "")
    let successCheck: Bool
    
    static let sample: [ChallengeMode] = [
        ChallengeMode(image: Image("sampleImage1"), title: "ㄱ", successCheck: false)
    ]
}
