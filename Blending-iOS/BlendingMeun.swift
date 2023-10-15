//
//  BlendingMeun.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

public struct BlendingMeun: Identifiable {
    let image: Image
    let name: String
    
    public let id = UUID()
    
    static let sample: [BlendingMeun] = [
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지"),
        BlendingMeun(image: Image("sampleImage1"), name: "샘플 이미지")
    ]
}
