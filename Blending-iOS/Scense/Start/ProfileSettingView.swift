import SwiftUI
import WidgetKit

struct ProfileSettingView: View {
    @State private var name = ""
    @State private var selectDate = Date()
    @State private var selectDate2 = Date()
    @State private var isDatePickerPresented = false
    @State private var isDatePicker2Presented = false
    @State private var isAlertPresented = false
    @State private var isNextViewPresented = false
    @StateObject private var appDataManager = AppDataManager()

    var body: some View {
        NavigationView {
            VStack {
                Text("연결 성공\n프로필을 입력해주세요")
                    .font(.title)
                    .lineSpacing(10)
                CustomAuthTextField(placeholder: "이름", text: $name)

                CustomAuthTextField(placeholder: "우리 처음 만난 날", text: .constant(appDataManager.appData.dateFormatter.string(from: selectDate)))
                    .onTapGesture {
                        isDatePickerPresented.toggle()
                    }

                CustomAuthTextField(placeholder: "본인의 생일", text: .constant(appDataManager.appData.dateFormatter.string(from: selectDate2)))
                    .onTapGesture {
                        isDatePicker2Presented.toggle()
                    }

                AuthButton(text: "시작하기") {
                    isAlertPresented = true
                }
                .foregroundColor(.gray)
            }
            .navigationBarTitle("", displayMode: .inline)
            .sheet(isPresented: $isDatePickerPresented) {
                DatePickerView(selectDate: $selectDate)
            }
            .sheet(isPresented: $isDatePicker2Presented) {
                DatePickerView(selectDate: $selectDate2)
            }
            .alert(isPresented: $isAlertPresented) {
                Alert(
                    title: Text("날짜 확인"),
                    message: Text("선택한 날짜는 다음과 같습니다:\n\(appDataManager.appData.dateFormatter.string(from: selectDate))"),
                    primaryButton: .default(Text("확인")) {
                        appDataManager.appData.date = selectDate
                        appDataManager.saveData()

                        isNextViewPresented = true
                        WidgetCenter.shared.reloadAllTimelines()
                    },
                    secondaryButton: .cancel()
                )
            }
            .fullScreenCover(isPresented: $isNextViewPresented) {
                NextView(selectedDate: selectDate)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSettingView()
    }
}
