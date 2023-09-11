//
//  ContentView.swift
//  Learn Navigation
//
//  Created by Shaheem PP on 11/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Screen(title: "Home", text: "First Screen", imageName: "house", color: .green)
        }
    }
}

struct Screen: View{
    
    let title: String
    let text: String
    let imageName: String
    let color: Color
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,height: 200,alignment: .center)
                .padding()
            Text(text)
                .font(.system(size: 30, weight: .light,design: .default))
                .padding()
            NavigationLink(
                destination: Screen(title: "Notifications", text: "No Notifications As of now!", imageName: "bell", color: .red),
                label:{
                    ContinueButton(color: color)
                }
            )
        }
        .navigationTitle(title)
    }
}


struct ContinueButton:View{
    
    let color:Color
    
    var body: some View{
        Text("Continue")
            .frame(width: 200, height: 50, alignment: .center)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
