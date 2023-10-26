//
//  BlendingWidgetBundle.swift
//  BlendingWidget
//
//  Created by 박준하 on 10/26/23.
//

import WidgetKit
import SwiftUI

@main
struct BlendingWidgetBundle: WidgetBundle {
    var body: some Widget {
        BlendingWidget()
        BlendingWidgetLiveActivity()
    }
}
