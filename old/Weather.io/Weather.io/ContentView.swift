//
//  ContentView.swift
//  Weather.io
//
//  Created by Shaheem PP on 10/08/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
        
        var userLatitude: String {
            return "\(locationManager.lastLocation?.coordinate.latitude ?? 0)"
        }
        
        var userLongitude: String {
            return "\(locationManager.lastLocation?.coordinate.longitude ?? 0)"
        }
    

    
        var body: some View {
            VStack {
                Text("location status: \(locationManager.statusString)")
                HStack {
                    Text("latitude: \(userLatitude)")
                    Text("longitude: \(userLongitude)")
                    var url = "https://api.openweathermap.org/data/2.5/weather?lat=\(userLatitude)&lon=\(userLongitude)&appid=7fef2b689e11a95e359030705dd04c8d"
                    Text(url)
                }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
