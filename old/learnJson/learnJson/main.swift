import Foundation


do {
    // Load the JSON data from file
    let fileURL = URL(fileURLWithPath: "data.json")
    let jsonData = try Data(contentsOf: fileURL)
    
    // Decode the JSON data into an array of Place objects
    let decoder = JSONDecoder()
    let places = try decoder.decode([Place].self, from: jsonData)
    
    // Loop through the array of Place objects and print the desired fields
    for place in places {
        print("Title: \(place.title)")
        print("Address: \(place.address)")
        print("City: \(place.city)")
        print("Latitude: \(place.latitude)")
        print("Longitude: \(place.longitude)")
        print("Description: \(place.description)\n")
    }
} catch {
    // Handle errors that occur while loading or decoding the JSON data
    print("Error: \(error)")
}
