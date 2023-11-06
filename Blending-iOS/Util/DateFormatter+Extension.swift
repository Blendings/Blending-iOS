//
//  DateFormatter+Extension.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//


import Foundation

extension DateFormatter {
    func toYearMonthDay(date: Date) -> String {
        self.dateFormat = "yyyy.MM.dd"
        self.locale = Locale(identifier: "ko_KR")
        return self.string(from: date)
    }
    
    func toYearMonthDayWeek(date: Date) -> String {
        self.dateFormat = "yyyy.MM.dd(EEE)"
        self.locale = Locale(identifier: "ko_kr")
        return self.string(from: date)
    }
}
