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
                CommunitiesCardView()
            }
            .navigationTitle("Communities")
        }
    }
}


#Preview {
    CommunitiesContentView()
}
