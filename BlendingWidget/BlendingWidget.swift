//
//  BlendingWidget.swift
//  BlendingWidget
//
//  Created by 박준하 on 10/26/23.
//

import WidgetKit
import SwiftUI

struct Provider: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent())
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: configuration)
    }
    
    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        return Timeline(entries: entries, policy: .atEnd)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
}

struct BlendingWidgetEntryView : View {
  @Environment(\.widgetFamily) var family: WidgetFamily
  var entry: Provider.Entry

  @ViewBuilder
  var body: some View {
    switch self.family {
    case .systemSmall:
        Image("sampleImage2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20.0)
    case .systemMedium:
        Image("sampleImage2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20.0)
    case .systemLarge:
        Image("sampleImage2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20.0)
    case .systemExtraLarge:
        Image("sampleImage2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(20.0)
    @unknown default:
      Text("default")
    }
  }
}

//여기서 설정할 때 뜬다
struct BlendingWidget: Widget {
    let kind: String = "Blending Widget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            BlendingWidgetEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
    }
}

extension ConfigurationAppIntent {
    fileprivate static var smiley: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "😀"
        return intent
    }
    
    fileprivate static var starEyes: ConfigurationAppIntent {
        let intent = ConfigurationAppIntent()
        intent.favoriteEmoji = "🤩"
        return intent
    }
}

#Preview(as: .systemSmall) {
    BlendingWidget()
} timeline: {
    SimpleEntry(date: .now, configuration: .smiley)
    SimpleEntry(date: .now, configuration: .starEyes)
}
