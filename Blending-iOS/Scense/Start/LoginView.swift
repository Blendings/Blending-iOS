//
//  LoginView.swift
//  Blending-iOS
//
//  Created by 박준하 on 11/9/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                CustomAuthTextField(placeholder: "이메일", text: $email)
                    .keyboardType(.emailAddress)
                CustomAuthTextField(placeholder: "패스워드", text: $password)
                
                HStack {
                    Spacer()
                    Button(action: {
                        print("email: \(email)\npassword: \(password)")
                    }) {
                        Text("로그인")
                            .font(.titleKyoboHandWriting)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
            }
            .padding()
        }
    }
}
