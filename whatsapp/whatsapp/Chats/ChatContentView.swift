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
            List {
                HStack{
                    Text("All")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color(red: 224/255, green: 240/255, blue: 255/255))
                        .foregroundColor(Color(red: 6/255, green: 61/255, blue: 118/255))
                        .cornerRadius(15)
                    Text("Unread")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color(red: 246/255, green: 246/255, blue: 246/255))
                        .foregroundColor(Color(red: 134/255, green: 133/255, blue: 138/255))
                        .cornerRadius(15)
                    Text("Contacts")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color(red: 246/255, green: 246/255, blue: 246/255))
                        .foregroundColor(Color(red: 134/255, green: 133/255, blue: 138/255))
                        .cornerRadius(15)
                    Text("Groups")
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color(red: 246/255, green: 246/255, blue: 246/255))
                        .foregroundColor(Color(red: 134/255, green: 133/255, blue: 138/255))
                        .cornerRadius(15)
                    //                    Text("test")
                    //                        .padding(.horizontal, 10)
                    //                        .padding(.vertical, 5)
                    //                        .background(
                    //                            Capsule()
                    //                                .fill(Color(red: 246/255, green: 246/255, blue: 246/255))
                    //                        )
                    //                        .foregroundColor(Color(red: 134/255, green: 133/255, blue: 138/255))
                    Spacer()
                }
                .listRowSeparator(.hidden)
                
                
                
                NavigationLink(destination: DetailView(detail: "Archived")) {
                    ZStack {
                        HStack {
                            ZStack(alignment: .bottom){
                                Image(systemName: "archivebox.fill")
                                    .foregroundStyle(Color.gray)
                            }
                            .frame(width: 50)
                            Text("Archived")
                                .bold()
                                .foregroundStyle(Color.black)
                            Spacer()
                        }
                    }
                }
                
                
                
                
                
                NavigationLink(destination: DetailView(detail: "Tech Team")) {
                    HStack {
                        Image("dp")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("You")
                                .lineLimit(1)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.black)
                            
                            HStack(alignment: .top) {
                                Text("✓ -Meeting tomorrow at 10")
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
                
                NavigationLink(destination: DetailView(detail: "Fadi Ali")) {
                    HStack {
                        Image("avatar")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text("Fadi Ali")
                                .lineLimit(1)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.black)
                            
                            HStack(alignment: .top) {
                                Text("✓ Yeah, I've completed the last tasks you have given me.")
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
                                .foregroundStyle(Color.blue)
                            
                            Text("2")
                                .padding(.horizontal, 10)
                                .background(
                                    Capsule()
                                        .fill(Color.blue)
                                )
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        .foregroundColor(Color.gray)
                    }
                }
                NavigationLink(destination: DetailView(detail: "Fadi Ali")) {
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 38, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.0, opacity: 0.104))
                                .rotationEffect(.degrees(-10), anchor: .bottomLeading)
                                .offset(x: -5, y: 5)
                            Rectangle()
                                .frame(width: 38, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(Color(hue: 0.0, saturation: 0.0, brightness: 0.0, opacity: 0.104))
                                .rotationEffect(.degrees(-17), anchor: .bottomLeading)
                                .offset(x: -6, y: 6)
                            Rectangle()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(.gray)
                            Image(systemName: "person.3.fill")
                                .foregroundStyle(Color.white)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Tech Communities")
                                .lineLimit(1)
                                .bold()
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color.black)
                            
                            HStack(alignment: .top) {
                                Text("TechSIAS, TinkerHub SIAS, MuLearn SIAS")
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
                            HStack{
                                Text("99+")
                                    .padding(.horizontal, 10)
                                    .background(
                                        Capsule()
                                            .fill(Color.blue)
                                    )
                                    .foregroundStyle(Color.white)
                            }
                            Spacer()
                        }
                        .foregroundColor(Color.gray)
                    }
                }
                
                NavigationLink(destination: DetailView(detail: "Tech Team")) {
                    CustomRow(name: "Tech Team", message: "✓ Adam Johnson: Hey team, just a quick update on the project. I've completed the initial analysis, and we're on track for the deadline. Let's meet tomorrow at 10 AM to discuss further", time: "15:45")
                }
                
                NavigationLink(destination: DetailView(detail: "Brandon Miller")) {
                    CustomRow(name: "Brandon Miller", message: "✓ Exciting news! Samsung just launched the Galaxy S24. The specs are impressive, especially the camera upgrades. Thinking of upgrading? Let's chat about it!", time: "12:35")
                }
                
                NavigationLink(destination: DetailView(detail: "Ethan Ahmed")) {
                    CustomRow(name: "Ethan Ahmed", message: "✓ Hey, I've found a solution to the tech glitch we were facing. Check your emails for the detailed instructions. Let's implement it ASAP. Thanks!", time: "10:00")
                }
                
                
                NavigationLink(destination: DetailView(detail: "Gavin Ali")) {
                    CustomRow(name: "Gavin Ali", message: "✓ Assalamu Alaikum, everyone! I came across a thought-provoking Islamic podcast today. Highly recommend it. Check it out during your commute!", time: "05:30")
                    
                }
                
                
            }
            .listStyle(PlainListStyle())
            .padding(0)
            .searchable(text: $searchText) {
                Text("Search")
            }
            .navigationTitle("Chats")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                    }) {
                        Image(systemName: "ellipsis.circle")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                    }) {
                        Image(systemName: "camera")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
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
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(name)
                    .lineLimit(1)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.black)
                
                HStack(alignment: .top) {
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
