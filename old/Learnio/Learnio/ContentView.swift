//
//  ContentView.swift
//  Learnio
//
//  Created by Shaheem PP on 20/04/23.
//

import SwiftUI

struct MyItem: Identifiable {
    let id = UUID()
    let name: String
    let flag: String
    let greeting:String
}

let myList = [
    MyItem(name: "Mandarin Chinese", flag: "🇨🇳", greeting: "Nǐ hǎo"),
    MyItem(name: "Spanish", flag: "🇪🇸", greeting: "Hola"),
    MyItem(name: "English", flag: "🇬🇧", greeting: "Hello"),
    MyItem(name: "Hindi", flag: "🇮🇳", greeting: "Namaste"),
    MyItem(name: "Arabic", flag: "🇸🇦", greeting: "Assalamualaikkum"),
    MyItem(name: "Bengali", flag: "🇧🇩", greeting: "Salam"),
    MyItem(name: "Portuguese", flag: "🇵🇹", greeting: "Olá"),
    MyItem(name: "Russian", flag: "🇷🇺", greeting: "Zdravstvuyte"),
    MyItem(name: "Japanese", flag: "🇯🇵", greeting: "Konnichiwa"),
    MyItem(name: "Punjabi", flag: "🇮🇳", greeting: "Sat sri akal"),
    MyItem(name: "German", flag: "🇩🇪", greeting: "Hallo"),
    MyItem(name: "Javanese", flag: "🇮🇩", greeting: "Sugeng enjang"),
    MyItem(name: "Wu Chinese", flag: "🇨🇳", greeting: "Nong hao"),
    MyItem(name: "Malay/Indonesian", flag: "🇲🇾", greeting: "Selamat"),
    MyItem(name: "Telugu", flag: "🇮🇳", greeting: "Namaskaram"),
    MyItem(name: "Vietnamese", flag: "🇻🇳", greeting: "Xin chào"),
    MyItem(name: "Korean", flag: "🇰🇷", greeting: "Annyeonghaseyo"),
    MyItem(name: "French", flag: "🇫🇷", greeting: "Bonjour"),
    MyItem(name: "Marathi", flag: "🇮🇳", greeting: "Namaskar"),
    MyItem(name: "Tamil", flag: "🇮🇳", greeting: "Vanakkam"),
    MyItem(name: "Urdu", flag: "🇵🇰", greeting: "Assalamualaikum"),
    MyItem(name: "Turkish", flag: "🇹🇷", greeting: "Merhaba"),
    MyItem(name: "Italian", flag: "🇮🇹", greeting: "Ciao"),
    MyItem(name: "Yue Chinese", flag: "🇨🇳", greeting: "Néih hóu"),
    MyItem(name: "Thai", flag: "🇹🇭", greeting: "S̄wạs̄dii"),
    MyItem(name: "Gujarati", flag: "🇮🇳", greeting: "Namaste"),
    MyItem(name: "Jin Chinese", flag: "🇨🇳", greeting: "Nín hǎo"),
]


struct ContentView: View {
    @State private var searchText = ""

    var body: some View {
        VStack {
            SearchBar(text: $searchText)

            List(myList.filter { item in
                searchText.isEmpty ? true : item.greeting.localizedCaseInsensitiveContains(searchText)
            }) { item in
                HStack {
                    Text(item.name + ": ")
                        .font(.body)
                        .foregroundColor(Color("customColor"))
                    Text(item.greeting)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("customColor"))
                    Spacer()
                    Text(item.flag)
                        .font(.body)
                }
            }
        }
    }
}

struct SearchBar: View {
    @Binding var text: String

    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .padding(.horizontal, 24)
                .padding(.vertical, 8)
                .background(Color(.systemGray6))
                .cornerRadius(10)

            if !text.isEmpty {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                }
                .padding(.trailing, 8)
            }
        }
        .padding()
//        .background(Color(.systemBackground))
//        .cornerRadius(10)
//        .shadow(radius: 10)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
