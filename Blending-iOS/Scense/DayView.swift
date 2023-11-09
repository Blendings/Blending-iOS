import SwiftUI

struct NextView: View {
    var selectedDate: Date
    var currentDate: Date {
        Date()
    }
    
    var body: some View {
        let cal = Calendar.current
        let components = cal.dateComponents([.day], from: selectedDate, to: currentDate)
        let daysPassed = components.day ?? 0
        
        return Text("D-\(daysPassed)일")
            .font(.largeTitle)
    }
}
