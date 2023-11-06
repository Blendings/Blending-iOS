//
//  ExRouletteView.swift
//  Blending-iOS
//
//  Created by 박준하 on 10/30/23.
//

import SwiftUI

struct ExRouletteView: View {
    @State private var punishments = [String]()
    @State private var currentPunishment = ""
    @State private var selectedPunishment = ""
    @State private var showAlert = false
    @State private var alertMessage = ""
    @State private var deletionIndex = -1

    var body: some View {
        VStack {
            Text("커스텀 벌칙 룰렛")
                .font(.largeTitle)
                .padding(.top, 20)
            
            TextField("벌칙 입력", text: $currentPunishment)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            HStack {
                Button(action: {
                    addPunishment()
                }) {
                    Text("추가")
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    selectRandomPunishment()
                }) {
                    Text("랜덤 선택")
                        .font(.headline)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding(.bottom, 20)
            
            if !punishments.isEmpty {
                Text("선택된 벌칙: \(selectedPunishment)")
                    .font(.title)
                    .padding(.top, 10)
            }
            VStack {
                HStack {
                    Text("리스트")
                        .font(.headline)
                }
                .padding(.leading, 16.0)
                List {
                    ForEach(punishments.indices, id: \.self) { index in
                        HStack {
                            Text(punishments[index])
                                .font(.title2)
                            
                            Spacer()
                            
                            Button(action: {
                                showDeleteAlert(at: index)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .scrollContentBackground(.hidden)
            }
        }
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text("알림"),
                message: Text(alertMessage),
                primaryButton: .destructive(Text("삭제")) {
                    if deletePunishment() {
                        alertMessage = "벌칙이 삭제되었습니다."
                    }
                },
                secondaryButton: .cancel(Text("취소"))
            )
        }
        .padding()
    }

    private func addPunishment() {
        if currentPunishment.isEmpty {
            showAlert = true
            alertMessage = "벌칙을 입력하세요."
            return
        }
        
        if punishments.contains(currentPunishment) {
            showAlert = true
            alertMessage = "중복된 벌칙입니다."
            return
        }

        punishments.append(currentPunishment)
        currentPunishment = ""
    }

    private func selectRandomPunishment() {
        if !punishments.isEmpty {
            let randomIndex = Int.random(in: 0..<punishments.count)
            selectedPunishment = punishments[randomIndex]
        }
    }
    
    private func showDeleteAlert(at index: Int) {
        deletionIndex = index
        showAlert = true
        alertMessage = "정말로 삭제하시겠습니까?"
    }

    private func deletePunishment() -> Bool {
        if deletionIndex >= 0 && deletionIndex < punishments.count {
            punishments.remove(at: deletionIndex)
            deletionIndex = -1
            return true
        }
        return false
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct RouletteView_Previews: PreviewProvider {
    static var previews: some View {
        ExRouletteView()
    }
}
