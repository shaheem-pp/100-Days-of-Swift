import Foundation

struct APIResponse: Codable {
    let banner: [Banner]
}

struct Banner: Codable {
    let id: Int
    let image: String
}

// Add other necessary structs here
