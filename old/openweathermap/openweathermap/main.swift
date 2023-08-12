import Foundation

func getWeatherData(for city: String, apiKey: String) {
    let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=\(apiKey)&units=metric"
    
    guard let url = URL(string: urlString) else {
        print("Invalid URL")
        return
    }
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error: \(error)")
            return
        }
        
        guard let data = data else {
            print("No data received")
            return
        }
        
        do {
            if let json = try JSONSerialization.jsonObject(with: data) as? [String: Any] {
                if let main = json["main"] as? [String: Any],
                   let temperature = main["temp"] as? Double,
                   let weatherArray = json["weather"] as? [[String: Any]],
                   let weather = weatherArray.first,
                   let description = weather["description"] as? String {
                    print("City: \(city)")
                    print("Temperature: \(temperature)°C")
                    print("Weather: \(description)")
                } else {
                    print("Invalid response format")
                }
            }
        } catch {
            print("JSON parsing error: \(error)")
        }
    }
    
    task.resume()
}

let apiKey = "ceb9aa4cba83b30679f4ab2fe2409a94"

print("Enter city name:")
if let city = readLine() {
    getWeatherData(for: city, apiKey: apiKey)
} else {
    print("Invalid input")
}
dispatchMain()
