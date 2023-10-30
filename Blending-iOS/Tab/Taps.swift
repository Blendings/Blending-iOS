//
//  Taps.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/14/23.
//

import SwiftUI

public enum Taps {
    case home
    case setting
    case roulette
    
    var textItem: Text {
        switch self {
        case .home: return Text("홈")
        case .setting: return Text("세팅")
        case .roulette: return Text("룰렛")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .setting: return Image(systemName: "gear")
        case .roulette: return Image(systemName: "captions.bubble")
        }
    }
}
