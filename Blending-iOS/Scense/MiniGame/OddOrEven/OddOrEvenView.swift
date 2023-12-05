import SwiftUI

struct ContentView: View {
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
        }
    }
}

struct PlayerInfoView: View {
    let playerNumber: Int
    let score: Int
    let previousNumbers: [(Int, Color)]

    var body: some View {
        VStack {
            Spacer()

            HStack {
                VStack {
                    Button("플레이어 \(playerNumber)") {}
                        .buttonStyle(PlayerButtonStyle(color: .blue))
                        .cornerRadius(10)

                    Button("점수: \(score)") {}
                        .buttonStyle(PlayerButtonStyle(color: .blue))
                        .cornerRadius(10)
                }
            }

            Spacer()
        }
    }
}


struct PreviousNumbersView: View {
    let previousNumbers: [(Int, Color)]

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(previousNumbers, id: \.0) { (number, color) in
                        Text("\(number)")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(color)
                            .cornerRadius(8)
                    }
                }
            }
        }
        .padding()
    }
}

struct OddOrEvenView: View {
    @State private var number: Int = 0
    @State private var currentPlayer: Int = 1
    @State private var scores: [Int] = [0, 0]
    @State private var showAlert: Bool = false
    @State private var previousNumbers: [(Int, Color)] = []
    @State private var winningScore: Int? = nil
    @State private var customWinningScore: String = ""
    @State private var isCustomScoreSet: Bool = false
    
    let initialAmount: String

    var body: some View {
        VStack {
            Text("플레이어 \(currentPlayer)의 차례")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .background(Color.blue)
                .foregroundColor(Color.white)
                .cornerRadius(10)

            Spacer()

            PreviousNumbersView(previousNumbers: previousNumbers)

            Spacer()

            HStack(spacing: 20) {
                Button("홀수") {
                    checkAnswer(guess: true)
                }
                .buttonStyle(GameButtonStyle(color: .blue))

                Button("짝수") {
                    checkAnswer(guess: false)
                }
                .buttonStyle(GameButtonStyle(color: .orange))
            }
            .padding()

            Spacer()

            HStack {
                PlayerInfoView(playerNumber: 1, score: scores[0], previousNumbers: previousNumbers)
                    .padding(.trailing, 20)

                PlayerInfoView(playerNumber: 2, score: scores[1], previousNumbers: previousNumbers)
            }
            .padding()
        }
        .background(Color.gray.opacity(0.2))
        .alert(isPresented: $showAlert) {
            if isCustomScoreSet {
                return Alert(
                    title: Text("게임 종료"),
                    message: Text("플레이어 \(winner())이(가) 이겼습니다.\n플레이어 1: \(scores[0])  플레이어 2: \(scores[1])"),
                    dismissButton: .default(Text("새 게임 시작"), action: {
                        newGame()
                    })
                )
            } else {
                return Alert(
                    title: Text("게임 종료"),
                    message: Text("사용자가 정한 점수에 도달했습니다.\n플레이어 \(winner())이(가) 이겼습니다."),
                    dismissButton: .default(Text("새 게임 시작"), action: {
                        newGame()
                    })
                )
            }
        }
        .onAppear {
            newGame()
        }
    }

    func winner() -> String {
        return scores[0] > scores[1] ? "1" : "2"
    }

    func checkAnswer(guess: Bool) {
        let isCorrect = (number % 2 == 1 && guess) || (number % 2 == 0 && !guess)
        let color = isCorrect ? Color.green : Color.red

        if isCorrect {
            scores[currentPlayer - 1] += 1
        } else {
            scores[currentPlayer - 1] -= 1
        }

        currentPlayer = 3 - currentPlayer

        previousNumbers.append((number, color))

        if previousNumbers.count >= 30 {
            showAlert = true
        } else {
            generateRandomNumber()
        }

        if let winningScore = winningScore {
            if scores[0] >= winningScore || scores[1] >= winningScore {
                showAlert = true
            }
        }
    }

    func generateRandomNumber() {
        number = Int.random(in: 1...10)
    }

    func newGame() {
        scores = [0, 0]
        currentPlayer = 1
        previousNumbers = []
        winningScore = askForWinningScore()
        isCustomScoreSet = false
        generateRandomNumber()
    }

    func askForWinningScore() -> Int {
        return Int(initialAmount) ?? 10
    }

    func winningScoreSet(_ score: Int) {
        winningScore = score
        isCustomScoreSet = true
    }
}

struct GameButtonStyle: ButtonStyle {
    var color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 150, height: 40)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct PlayerButtonStyle: ButtonStyle {
    var color: Color

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: 150, height: 40)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
