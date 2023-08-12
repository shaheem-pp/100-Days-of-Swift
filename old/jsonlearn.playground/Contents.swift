import UIKit

// Define a struct to represent the JSON data
struct Item {
    let id: Int
    let title: String
    let comingSoon: Bool
}

let jsonString = """
[
    {"id": 1,"title": "New Jar","coming_soon": false},
    {"id": 2,"title": "Accessories","coming_soon": false},
    {"id": 3,"title": "Purifiers","coming_soon": true},
    {"id": 4,"title": "Water Tanker","coming_soon": true},
    {"id": 5,"title": "Beverages","coming_soon": true},
    {"id": 6,"title": "Water Intake","coming_soon": true},
    {"id": 7,"title": "Water Bank","coming_soon": true},
    {"id": 8,"title": "Water Testing","coming_soon": true}
]
"""

// Convert the JSON string to data
if let jsonData = jsonString.data(using: .utf8) {
    do {
        // Use JSONSerialization to parse the JSON data
        if let jsonArray = try JSONSerialization.jsonObject(with: jsonData, options: []) as? [[String: Any]] {
            
            // Create an empty array to store the parsed items
            var items: [Item] = []
            
            // Iterate through each dictionary in the JSON array
            for itemDict in jsonArray {
                // Access the values for id, title, and coming_soon keys
                if let id = itemDict["id"] as? Int,
                   let title = itemDict["title"] as? String,
                   let comingSoon = itemDict["coming_soon"] as? Bool {
                    
                    // Create an Item object using the retrieved values
                    let item = Item(id: id, title: title, comingSoon: comingSoon)
                    
                    // Append the item to the items array
                    items.append(item)
                }
            }
            
            // Print the information for each item
            for item in items {
                let comingSoonString = item.comingSoon ? "coming soon" : "active"
                print("ID: \(item.id)) \(item.title) is \(comingSoonString)")
            }
        }
    } catch {
        print("Error parsing JSON: \(error.localizedDescription)")
    }
}


