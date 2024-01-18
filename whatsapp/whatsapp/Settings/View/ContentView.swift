//
//  ContentView.swift
//  whatsapp
//
//  Created by Shaheem PP on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var selectedTab = 3
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("Updates")
                .tabItem {
                    Image(systemName: "person.and.background.dotted")
                    Text("Updates")
                }
                .tag(0)
            
            Text("Calls")
                .tabItem {
                    Image(systemName: "phone")
                    Text("Calls")
                }
                .tag(1)
            
            Text("Communities")
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Communities")
                }
                .tag(2)
            ChatContentView()
                .tabItem {
                    Image(systemName: "message")
                    Text("Chats")
                }
                .tag(3)
            NavigationStack {
                List {
                    Section() {
                        ProfileView()
                        NavigationLink(destination: DetailView(detail: "Avatar")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.blue.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "shared.with.you")
                                        .foregroundColor(.white)
                                }
                                Text("Avatar")
                            }
                        }
                    }
                    
                    Section() {
                        NavigationLink(destination: DetailView(detail: "Broadcast Lists")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.green.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "megaphone.fill")
                                        .foregroundColor(.white)
                                }
                                Text("Broadcast Lists")
                            }
                        }
                        
                        NavigationLink(destination: DetailView(detail: "Starred Messages")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.yellow.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.white)
                                }
                                Text("Starred Messages")
                            }
                        }
                        
                        NavigationLink(destination: DetailView(detail: "Linked Devices")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.teal.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "laptopcomputer")
                                        .foregroundColor(.white)
                                }
                                Text("Linked Devices")
                            }
                        }
                    }
                    Section() {
                        NavigationLink(destination: DetailView(detail: "Account")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.blue.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "key.fill")
                                        .foregroundColor(.white)
                                }
                                Text("Account")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Privacy")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.teal.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "lock.fill")
                                        .foregroundColor(.white)
                                }
                                Text("Privacy")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Chat")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.green.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "message")
                                        .foregroundColor(.white)
                                }
                                Text("Chat")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Notification")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.red.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "app.badge")
                                        .foregroundColor(.white)
                                }
                                Text("Notification")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Payments")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.mint.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "indianrupeesign.circle")
                                        .foregroundColor(.white)
                                }
                                Text("Payments")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Storage and Data")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.green.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "arrow.up.arrow.down")
                                        .foregroundColor(.white)
                                }
                                Text("Storage and Data")
                            }
                        }
                    }
                    
                    Section() {
                        NavigationLink(destination: DetailView(detail: "Help")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.blue.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "info")
                                        .foregroundColor(.white)
                                }
                                Text("Help")
                            }
                        }
                        NavigationLink(destination: DetailView(detail: "Tell a Friend")) {
                            HStack {
                                ZStack{
                                    RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                                        .foregroundColor(Color.red.opacity(1))
                                        .frame(width: 30, height: 30)
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.white)
                                }
                                Text("Tell a Friend")
                            }
                        }
                    }
                }
                .searchable(text: $searchText) {
                    Text("Search")
                }
                .navigationTitle("Settings")
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            .tag(4)
        }
    }
}

struct DetailView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}





#Preview {
    ContentView()
}
