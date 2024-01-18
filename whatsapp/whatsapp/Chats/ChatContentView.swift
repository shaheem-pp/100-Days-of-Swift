//
//  ChatContentView.swift
//  whatsapp
//
//  Created by Shaheem PP on 18/01/24.
//

import SwiftUI

struct ChatContentView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack{
                    Text("All")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.blue.opacity(0.1))
                        .foregroundColor(Color(red: 0, green: 0, blue: 0.2))
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Text("Unread")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Text("Contacts")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Text("Groups")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.black.opacity(0.1))
                        .foregroundColor(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    Spacer()
                }
                .padding(.leading)
                
                NavigationLink(destination: DetailView(detail: "Tech Team")) {
                    HStack {
                        Image("dp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("You")
                                .font(.title2)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.black)
                            
                            HStack(alignment: .top) {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.blue)
                                
                                Text("Meeting tomorrow at 10")
                                    .lineLimit(2)
                                    .truncationMode(.tail)
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .trailing) {
                            Text("16:00")
                            Spacer()
                            Image(systemName: "pin.fill")
                                .rotationEffect(Angle(degrees: 45))
                        }
                        .foregroundColor(Color.gray)
                    }
                }
                .padding()
                
                NavigationLink(destination: DetailView(detail: "Tech Team")) {
                    CustomRow(name: "Tech Team", message: "Adam Johnson: Hey team, just a quick update on the project. I've completed the initial analysis, and we're on track for the deadline. Let's meet tomorrow at 10 AM to discuss further", time: "15:45")
                }
                .padding()
                
                NavigationLink(destination: DetailView(detail: "Brandon Miller")) {
                    CustomRow(name: "Brandon Miller", message: "Exciting news! Samsung just launched the Galaxy S24. The specs are impressive, especially the camera upgrades. Thinking of upgrading? Let's chat about it!", time: "12:35")
                }
                .padding()
                
                NavigationLink(destination: DetailView(detail: "Ethan Ahmed")) {
                    CustomRow(name: "Ethan Ahmed", message: "Hey, I've found a solution to the tech glitch we were facing. Check your emails for the detailed instructions. Let's implement it ASAP. Thanks!", time: "10:00")
                }
                .padding()
                
                NavigationLink(destination: DetailView(detail: "Gavin Ali")) {
                    CustomRow(name: "Gavin Ali", message: "Assalamu Alaikum, everyone! I came across a thought-provoking Islamic podcast today. Highly recommend it. Check it out during your commute!", time: "05:30")
                }
                .padding()
                
                
            }
            .searchable(text: $searchText) {
                Text("Search")
            }
            .navigationTitle("Chats")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        // Handle the action when the three dots button is tapped
                        // You can show a menu or perform a specific action here
                    }) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Handle the action when the three dots button is tapped
                        // You can show a menu or perform a specific action here
                    }) {
                        Image(systemName: "camera")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Handle the action when the three dots button is tapped
                        // You can show a menu or perform a specific action here
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
        }
    }
}

struct CustomRow: View {
    let name: String
    let message: String
    let time: String
    
    var body: some View {
        HStack {
            Image("avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.black)
                
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .foregroundColor(.blue)
                    
                    Text(message)
                        .lineLimit(2)
                        .truncationMode(.tail)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(time)
                Spacer()
            }
            .foregroundColor(Color.gray)
        }
    }
}


#Preview {
    ChatContentView()
}
