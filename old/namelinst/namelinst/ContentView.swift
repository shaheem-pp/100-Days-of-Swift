//
//  ContentView.swift
//  namelinst
//
//  Created by Shaheem PP on 23/06/23.
//

import SwiftUI

let characters = [
    "Naruto Uzumaki",
    "Sasuke Uchiha",
    "Sakura Haruno",
    "Kakashi Hatake",
    "Konohamaru Sarutobi",
    "Gaara",
    "Neji Hyuga",
    "Rock Lee",
    "Hinata Hyuga",
    "Itachi Uchiha",
]


struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(char)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
