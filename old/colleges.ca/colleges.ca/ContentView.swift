import SwiftUI

struct ContentView: View {
    @State private var databaseInfo: [String: Any] = [:]
    @State private var responseText: String = ""

    private func fetchData() {
        guard let url = URL(string: "https://api.notion.com/v1/databases/af48851f826b4ed3806da71461dfef34") else {
            return
        }

        var request = URLRequest(url: url)
        request.setValue("Bearer secret_y2Q48Yt7hI4RMFHg0Gm7kzrTe1okpCy2VU0GInoZCdT", forHTTPHeaderField: "Authorization")
        request.setValue("2022-06-28", forHTTPHeaderField: "Notion-Version")

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }

            if let decodedResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                DispatchQueue.main.async {
                    self.databaseInfo = decodedResponse
                }
            }
        }.resume()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Database Info")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Archived: \(stringValue(databaseInfo["archived"]))")
            Text("Created By: \(dictionaryValue(databaseInfo["created_by"]))")
            Text("Created Time: \(stringValue(databaseInfo["created_time"]))")
        }
        .padding()
        .onAppear {
            fetchData()
        }
    }
    
    private func stringValue(_ value: Any?) -> String {
        if let stringValue = value as? String {
            return stringValue
        } else {
            return "N/A"
        }
    }
    
    private func dictionaryValue(_ value: Any?) -> String {
        if let dictValue = value as? [String: Any],
           let id = dictValue["id"] as? String,
           let object = dictValue["object"] as? String {
            return "id: \(id), object: \(object)"
        } else {
            return "N/A"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
