//
//  PhotoService.swift
//  unsplash_app
//
//  Created by Shaheem PP on 21/12/22.
//

import Foundation

struct Photo {
  let id: String
  let url: URL
  // add other properties as needed
}

class PhotoService {
  func fetchRandomPhoto(completion: @escaping (Result<Photo, Error>) -> Void) {
    let apiKey = "your_api_key_here"
    let endpoint = "https://api.unsplash.com/photos/random/?client_id=\(apiKey)"

    guard let url = URL(string: endpoint) else {
      return
    }

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      if let error = error {
        completion(.failure(error))
        return
      }

      guard let data = data else {
        let error = NSError(domain: "error", code: 0, userInfo: nil)
        completion(.failure(error))
        return
      }

      do {
        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
          let photo = Photo(id: json?["id"] as! String, url: url)
//        let photo = Photo(id: json["id"] as! String, url: URL(string: json["urls"]!["full"] as! String)!)
        completion(.success(photo))
      } catch {
        completion(.failure(error))
      }
    }

    task.resume()
  }
}
