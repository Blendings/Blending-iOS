//
//  AppDataManager.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct AppData: Identifiable {
    let id = UUID()
    var isFirstLaunch: Bool
    var date: Date
    var photoURL: URL?
    var profileFirstURL: URL?
    var profileSecondURL: URL?
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        return formatter
    }
}

class AppDataManager: ObservableObject {
    @Published var appData: AppData

    init() {
        self.appData = AppData(
            isFirstLaunch: UserDefaults.standard.bool(forKey: "isFirstLaunch"),
            date: UserDefaults.standard.object(forKey: "date") as? Date ?? Date(),
            photoURL: UserDefaults.standard.url(forKey: "photoURL"),
            profileFirstURL: UserDefaults.standard.url(forKey: "profileFirstURL"),
            profileSecondURL: UserDefaults.standard.url(forKey: "profileSecondURL")
        )
    }

    func saveData() {
        UserDefaults.standard.set(appData.isFirstLaunch, forKey: "isFirstLaunch")
        UserDefaults.standard.set(appData.date, forKey: "date")
        UserDefaults.standard.set(appData.photoURL, forKey: "photoURL")
        UserDefaults.standard.set(appData.profileFirstURL, forKey: "profileFirstURL")
        UserDefaults.standard.set(appData.profileSecondURL, forKey: "profileSecondURL")
    }
}
//
//struct ContentView: View {
//    @StateObject private var appDataManager = AppDataManager()
//
//    var body: some View {
//        VStack {
//            Text("Is First Launch: \(appDataManager.appData.isFirstLaunch ? "Yes" : "No")")
//
//            Button("Set First Launch") {
//                appDataManager.appData.isFirstLaunch.toggle()
//                appDataManager.saveData()
//            }
//
//            // 다른 데이터 속성에 대한 버튼 및 표시를 추가할 수 있습니다
//        }
//    }
//}
