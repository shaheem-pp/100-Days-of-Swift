//
//  HomeView.swift
//  Landmarks
//
//  Created by Shaheem PP on 14/04/23.
//

import SwiftUI


struct HomeView: View {
    @State private var numberToSend = 0
    var body: some View {
        VStack {
            NavigationView {
                VStack(alignment: .center) {
                    Text("Where I want to go?")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(.all, 20.0)
                    NavigationLink(destination: ContentView()) {
                        HStack {
                            Image("applePark")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50, height: 50)
                            Spacer()
                            HStack {
                                Text("Apple Park")
                                    .font(.title)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color.purple)
                                Image(systemName: "location")
                                    .aspectRatio(contentMode: .fill)
                                    .foregroundColor(Color.purple)
                            }
                            
                        }.padding()
                    }
                }
                
            }
        }
    }
}




struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
