import SwiftUI

struct ImageCardView: View {
    var image: ImageModel
    
    var body: some View {
        VStack {
            Image(image.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(100)
                .scaledToFill()
            Text(image.imageName.uppercased())
        }
    }
}

struct ImageCardView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleImage = ImageModel(imageName: "img1", description: "Sample Description")
        return ImageCardView(image: sampleImage)
    }
}
