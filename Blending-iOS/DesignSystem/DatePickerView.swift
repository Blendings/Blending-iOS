import SwiftUI

struct DatePickerView: View {
    @Binding var selectDate: Date
    @Environment(\.presentationMode) var presentationMode

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter
    }()

    var body: some View {
        VStack {
            DatePicker("날짜를 선택하세요", selection: $selectDate, displayedComponents: [.date])
                .datePickerStyle(WheelDatePickerStyle())
                .environment(\.locale, Locale(identifier: "ko_kr"))
                .labelsHidden()

            Text(dateFormatter.string(from: selectDate))
            Button("확인") {
                self.presentationMode.wrappedValue.dismiss()
            }
            .font(.largeTitle)
            .foregroundColor(.gray)
        }
    }
}
