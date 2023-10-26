//
//  BlendingWidgetLiveActivity.swift
//  BlendingWidget
//
//  Created by 박준하 on 10/26/23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct BlendingWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var emoji: String
    }

    var name: String
}

struct BlendingWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: BlendingWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension BlendingWidgetAttributes {
    fileprivate static var preview: BlendingWidgetAttributes {
        BlendingWidgetAttributes(name: "World")
    }
}

extension BlendingWidgetAttributes.ContentState {
    fileprivate static var smiley: BlendingWidgetAttributes.ContentState {
        BlendingWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: BlendingWidgetAttributes.ContentState {
         BlendingWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: BlendingWidgetAttributes.preview) {
   BlendingWidgetLiveActivity()
} contentStates: {
    BlendingWidgetAttributes.ContentState.smiley
    BlendingWidgetAttributes.ContentState.starEyes
}
