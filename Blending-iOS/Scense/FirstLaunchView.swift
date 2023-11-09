//import SwiftUI
//import WidgetKit
//
//struct FirstLaunchView: View {
//    @State private var selectDate = Date()
//    @State private var isDatePickerPresented = false
//    @State private var isAlertPresented = false
//    @State private var isNextViewPresented = false
//    
//    @StateObject private var appDataManager = AppDataManager()
//    
//    var body: some View {
//        NavigationView {
//            VStack {
//                Text("우리 처음 만난 날")
//                    .font(.largeTitle)
//                    .foregroundColor(.black)
//                Text(appDataManager.appData.dateFormatter.string(from: selectDate))
//                    .font(.largeTitle)
//                    .foregroundColor(.black)
//                    .onTapGesture {
//                        isDatePickerPresented.toggle()
//                    }
//                Button("시작하기") {
//                    isAlertPresented = true
//                }
//                .font(.largeTitle)
//                .foregroundColor(.gray)
//            }
//            .navigationBarTitle("", displayMode: .inline)
//            .sheet(isPresented: $isDatePickerPresented) {
//                DatePickerView(selectDate: $selectDate)
//            }
//            .alert(isPresented: $isAlertPresented) {
//                Alert(
//                    title: Text("날짜 확인"),
//                    message: Text("선택한 날짜는 다음과 같습니다:\n\(appDataManager.appData.dateFormatter.string(from: selectDate))"),
//                    primaryButton: .default(Text("확인")) {
//                        appDataManager.appData.date = selectDate
//                        appDataManager.saveData()
//                        
//                        isNextViewPresented = true
//                        print(selectDate)
//                        WidgetCenter.shared.reloadAllTimelines()
//                    },
//                    secondaryButton: .cancel()
//                )
//            }
//            .background(
//                NavigationLink("", destination: NextView(selectedDate: selectDate), isActive: $isNextViewPresented)
//                    .opacity(0)
//            )
//        }
//    }
//}
//
//struct DatePickerView: View {
//    @Binding var selectDate: Date
//
//    private let dateFormatter: DateFormatter = {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy/MM/dd"
//        return formatter
//    }()
//
//    var body: some View {
//        VStack {
//            DatePicker("날짜를 선택하세요", selection: $selectDate, displayedComponents: [.date])
//                .datePickerStyle(WheelDatePickerStyle())
//                .environment(\.locale, Locale(identifier: "ko_kr"))
//                .labelsHidden()
//
//            Text(dateFormatter.string(from: selectDate))
//            Button("확인") {
//                
//            }
//            .font(.largeTitle)
//            .foregroundColor(.gray)
//        }
//    }
//}
//
//
//struct FirstLaunchView_Previews: PreviewProvider {
//    static var previews: some View {
//        FirstLaunchView()
//    }
//}
