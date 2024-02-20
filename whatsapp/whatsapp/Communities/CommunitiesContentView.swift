//
//  CommunitiesContentView.swift
//  whatsapp
//
//  Created by Shaheem PP on 23/01/24.
//

import SwiftUI

struct CommunitiesContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 50, height: 50)
                                .cornerRadius(10)
                                .foregroundColor(.gray)
                            Image(systemName: "person.3.fill")
                                .foregroundStyle(Color.white)
                            ZStack {
                                Circle()
                                    .frame(width: 25, height: 25)
                                    .offset(x: 20, y: 10)
                                    .foregroundColor(.blue)
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .foregroundStyle(Color.white)
                                    .frame(width: 15, height: 15)
                                    .offset(x: 20, y: 10)
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding(.trailing)
                        Text("New Community")
                            .bold()
                    }
                }
                
                Section{
                    HStack{
                        NavigationLink(destination: DetailView(detail: "Tech Communities")) {
                            ZStack{
                                Rectangle()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(10)
                                    .foregroundColor(.gray)
                                Image(systemName: "photo")
                                    .foregroundColor(Color.white)
                                    .scaledToFit()
                            }
                            Text("Tech Communities")
                                .bold()
                                .foregroundStyle(Color.black)
                            Spacer()
                        }
                    }
                    HStack{
                        NavigationLink(destination: DetailView(detail: "Announcements")) {
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(10)
                                        .foregroundColor(Color(hue: 0.59, saturation: 0.463, brightness: 0.992, opacity: 0.431))
                                    Image(systemName: "megaphone.fill")
                                        .foregroundColor(Color(hue: 0.59, saturation: 1.0, brightness: 1.0))
                                        .scaledToFit()
                                }
                                VStack(alignment:.leading){
                                    Text("Announcements")
                                        .bold()
                                        .foregroundStyle(Color.black)
                                    Text("Admin: Welcome to the announcement channnel.")
                                        .lineLimit(1)
                                        .multilineTextAlignment(.leading)
                                        .font(.subheadline)
                                        .foregroundStyle(Color.gray)
                                }
                                Spacer()
                                VStack(alignment: .trailing, content: {
                                    Text("6:09PM")
                                        .font(.subheadline)
                                        .foregroundStyle(Color.gray)
                                    Image(systemName: "pin.fill")
                                        .font(.caption)
                                        .foregroundStyle(Color.gray)
                                        .rotationEffect(Angle(degrees: 45))
                                })
                            }
                        }
                    }
                    HStack{
                        NavigationLink(destination: DetailView(detail: "TechSIAS")) {
                            HStack{
                                Image("avatar")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(100)
                                VStack(alignment:.leading){
                                    Text("TechSIAS")
                                        .bold()
                                        .foregroundStyle(Color.black)
                                    Text("Admin: Exciting News🚀 We are have launching")
                                        .lineLimit(1)
                                        .multilineTextAlignment(.leading)
                                        .font(.subheadline)
                                        .foregroundStyle(Color.gray)
                                }
                                Spacer()
                                VStack(alignment: .trailing, content: {
                                    Text("Yesterday")
                                        .font(.subheadline)
                                        .foregroundStyle(Color.blue)
                                    HStack{
                                        Image(systemName: "speaker.slash.fill")
                                        Circle()
                                            .frame(width: 10, height: 10)
                                            .foregroundColor(Color.blue)
                                    }
                                })
                            }
                        }
                    }
                    HStack{
                        NavigationLink(destination: DetailView(detail: "TechSIAS")) {
                            Text("See All")
                                .foregroundStyle(Color.gray)
                        }
                    }
                }
            }
            .navigationTitle("Communities")
        }
    }
}


#Preview {
    CommunitiesContentView()
}
