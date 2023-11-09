//
//  SignUpView.swift
//  Blending-iOS
//
//  Created by 박준하 on 11/9/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isNextViewActive = false

    var body: some View {
        NavigationLink(destination: CoupleShareView(), isActive: $isNextViewActive) {
            EmptyView()
        }
        .hidden()

        ScrollView(.vertical) {
            VStack(alignment: .leading, spacing: 20) {
                Text("서로의 초대 코드를 입력하여 연결해주세요!")
                    .font(.title)
                CustomAuthTextField(placeholder: "이메일", text: $email)
                    .keyboardType(.emailAddress)
                CustomAuthTextField(placeholder: "패스워드", text: $password)

                HStack {
                    Spacer()
                    Button(action: {
                        print("email: \(email)\npassword: \(password)")
                        isNextViewActive = true
                    }) {
                        Text("회원가입")
                            .font(.title)
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

#Preview {
    SignUpView()
}
