import SwiftUI

struct RemoteImage: View {
    private var url: String
    @StateObject private var imageLoader = ImageLoader()

    init(url: String) {
        self.url = url
    }

    var body: some View {
        Image(uiImage: imageLoader.image ?? UIImage(systemName: "photo")!)
            .resizable()
            .onAppear {
                imageLoader.loadImage(from: url)
            }
    }
}

class ImageLoader: ObservableObject {
    @Published var image: UIImage?

    func loadImage(from urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }

            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
        }.resume()
    }
}
