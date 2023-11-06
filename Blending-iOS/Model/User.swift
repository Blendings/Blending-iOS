//
//  User.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/15/23.
//

import SwiftUI

struct User {
    let username: String
    let account: String
    
    static let shared = User(username: "박준하", account: "junha.0211")
}
