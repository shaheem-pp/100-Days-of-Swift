//
//  ContentView.swift
//  whatsapp
//
//  Created by Shaheem PP on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    var body: some View {
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
        HStack{
            Spacer()
            VStack{
                Image(systemName: "person.and.background.dotted")
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                Text("Updates")
                    .font(.caption)
            }
            .foregroundColor(Color.gray)
            Spacer()
            VStack{
                Image(systemName: "phone")
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                Text("Calls")
                    .font(.caption)
            }
            .foregroundColor(Color.gray)
            Spacer()
            VStack{
                Image(systemName: "person.3")
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                Text("Communities")
                    .font(.caption)
            }
            .foregroundColor(Color.gray)
            Spacer()
            VStack{
                Image(systemName: "message")
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                Text("Chats")
                    .font(.caption)
            }
            .foregroundColor(Color.gray)
            Spacer()
            VStack{
                Image(systemName: "gear")
                    .frame(width: 20, height: 20)
                    .scaledToFit()
                Text("Settings")
                    .font(.caption)
            }
            .foregroundColor(Color.blue)
            Spacer()
        }
    }
}

struct DetailView: View {
    let detail: String
    var body: some View {
        Text(detail)
    }
}

struct ProfileView: View {
    var body: some View {
        NavigationLink(destination: Text("Profile Detail View")) {
            HStack {
                Image("dp")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Shaheem PP")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                    
                    Text("So which of the favors of your Lord would you deny? (Ar-Rahman, Ayah 13)")
                        .lineLimit(1)
                        .truncationMode(.tail)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                
                ZStack {
                    Circle()
                        .foregroundColor(Color.blue.opacity(0.2))
                        .frame(width: 40, height: 40)
                    
                    Image(systemName: "qrcode")
                        .foregroundColor(.blue)
                }
            }
        }
    }
}




#Preview {
    ContentView()
}
