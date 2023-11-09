import SwiftUI

struct ProfileImageView: View {
    @Binding var image: Image?
    @Binding var isEditing: Bool
    @State private var isImagePickerPresented = false

    var body: some View {
        Button(action: {
            isEditing.toggle()
            isImagePickerPresented = true
        }) {
            if let image = image {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            }
        }
        .sheet(isPresented: $isImagePickerPresented) {
            ImagePicker(selectedImage: $image)
        }
    }
}
