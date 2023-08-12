import SwiftUI

struct ContentView: View {
    @State private var apiResponse: APIResponse?

    var body: some View {
        NavigationView {
            VStack {
                if let apiResponse = apiResponse {
                    List(apiResponse.banner, id: \.id) { banner in
                        RemoteImage(url: banner.image)
                            .frame(height: 200)
                            .padding()
                    }
                } else {
                    ProgressView("Loading...")
                        .onAppear {
                            fetchData()
                        }
                }
            }
            .navigationBarTitle("API Data")
        }
    }

    func fetchData() {
        guard let url = URL(string: "https://api.aguaindia.com/api/v1/home/?longitude=76.354625&latitude=10.055509") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(APIResponse.self, from: data)
                DispatchQueue.main.async {
                    self.apiResponse = response
                }
            } catch {
                print("Error decoding data: \(error)")
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
