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
        
        VStack {
            Text("처음 만난 날")
                .font(.headline)
                .frame(maxWidth: .infinity)
                        
            Text("D-\(daysPassed)")
                .font(.subheadline)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)
            
            Spacer()
        }
    }
}

#Preview {
    NextView(selectedDate: Date())
}

