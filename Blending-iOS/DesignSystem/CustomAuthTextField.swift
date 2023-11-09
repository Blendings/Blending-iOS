//
//  CustomAuthTextField.swift
//  Blending-iOS
//
//  Created by 박준하 on 11/9/23.
//

import SwiftUI

struct CustomAuthTextField: View {

    var placeholder: String
    @Binding var text: String

    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.gray)
                        .offset(y: -10)
                }

                TextField("", text: $text)
                    .frame(height: 45)
                    .padding(.bottom)

                Rectangle()
                    .frame(height: 1, alignment: .bottom)
                    .foregroundColor(.gray)
                    .padding(.top)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    CustomAuthTextField(placeholder: "Enter Something", text: .constant("") )
}
