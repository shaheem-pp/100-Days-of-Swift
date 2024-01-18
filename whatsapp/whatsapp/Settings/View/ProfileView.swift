//
//  ProfileView.swift
//  whatsapp
//
//  Created by Shaheem PP on 17/01/24.
//

import SwiftUI

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
    ProfileView()
}
