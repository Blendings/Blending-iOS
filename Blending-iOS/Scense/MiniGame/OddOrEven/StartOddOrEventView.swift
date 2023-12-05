import SwiftUI

struct StartOddOrEventView: View {
    @State private var initialAmount: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("얼마나 점수를 얻어야 게임에 승자가 될 수 있나요?", text: $initialAmount)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding()
                
                NavigationLink(destination: OddOrEvenView(initialAmount: initialAmount)) {
                    Text("게임 시작")
                        .font(.headline)
                        .padding()
                        .frame(width: 200, height: 40)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationBarTitle("홀짝 게임", displayMode: .inline)
            .padding()
        }
    }
}
