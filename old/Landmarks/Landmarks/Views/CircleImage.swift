import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image        
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
