//
//  ContentView.swift
//  i am rich
//
//  Created by Shaheem PP on 25/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image("diamond")
                .resizable()
                .frame(width: 100, height: 100)
            
            Button(action: {
                showAlert = true
            }) {
                Text("I Am Rich")
                    .fontWeight(.bold)
                    .font(.system(size: 14))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(5)
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Button Tapped!"),
                    message: Text("2 പൈസ എക്സ്ട്രാ ഒണ്ട് ... അയിനാണ് 😏"),
                    dismissButton: .default(Text("OK"))
                )
            }
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
