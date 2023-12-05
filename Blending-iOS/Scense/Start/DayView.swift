import SwiftUI
import UIKit
import WidgetKit

struct DayView: View {
    var selectedDate: Date
    var currentDate: Date {
        Date()
    }

    @State private var isEditingFirstProfile = false
    @State private var isEditingSecondProfile = false
    @State private var firstImage: Image?
    @State private var secondImage: Image?
    @State private var selectedBackgroundImage: Image?
    @State private var isImagePickerPresented = false

    var body: some View {
        let cal = Calendar.current
        let components = cal.dateComponents([.day], from: selectedDate, to: currentDate)
        let daysPassed = components.day ?? 0

        VStack {
            Text("처음 만난 날")
                .font(.headlineKyoboHandWriting)
                .frame(maxWidth: .infinity)

            Text("D-\(daysPassed)")
                .font(.subheadlineKyoboHandWriting)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 10)

            Spacer()

            HStack {
                VStack {
                    ProfileImageView(image: $firstImage, isEditing: $isEditingFirstProfile)
                    Text("남친")
                        .font(.headlineKyoboHandWriting)
                }

                Image(systemName: "sun.min.fill")
                    .font(.system(size: 30.0))

                VStack {
                    ProfileImageView(image: $secondImage, isEditing: $isEditingSecondProfile)
                    Text("여친")
                        .font(.headlineKyoboHandWriting)
                }
            }
            
            Spacer()
        }
        .background(selectedBackgroundImage)
        
        Button(action: {
            isImagePickerPresented = true
        }) {
            Text("배경 이미지 변경")
                .font(.headlineKyoboHandWriting)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePicker(selectedImage: $selectedBackgroundImage)
        }
    }
}

#Preview {
    DayView(selectedDate: Date())
}

