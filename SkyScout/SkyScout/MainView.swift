//
//  ContentView.swift
//  SkyScout
//
//  Created by Shaheem PP on 14/09/23.
//

import SwiftUI

struct MainView: View {
    @State private var cityName = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.pink)
                .frame(width: 1000, height: 500)
                .offset(y: -200)
                .rotationEffect(Angle(degrees: 45))
            VStack {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.black)
                        .opacity(0.5)
                        .frame(width: .infinity, height: .infinity)
                    VStack {
                        TextField("Enter city name", text: $cityName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding()
                        
//                        NavigationLink(destination: WeatherView(cityName: cityName)) {
//                            Text("Get Weather")
//                                .font(.title)
//                                .fontWeight(.bold)
//                                .foregroundColor(.white)
//                                .padding()
//                                .background(Color.blue)
//                                .cornerRadius(10)
//                        }
                    }
                    .padding(50)
                }
                Spacer()
            }
            .padding(10)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
