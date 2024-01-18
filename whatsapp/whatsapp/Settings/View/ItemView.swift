//
//  ItemView.swift
//  whatsapp
//
//  Created by Shaheem PP on 17/01/24.
//

import SwiftUI

struct ItemView: View {
    @Binding var systemName: String
    @Binding var text: String
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerSize: CGSize(width: 5, height: 5))
                    .foregroundColor(Color.black)
                    .frame(width: 30, height: 30)
                Image(systemName: systemName)
                    .foregroundColor(.white)
            }
            Text(text)
            Spacer()
        }
    }
}

#Preview {
    ItemView(systemName: .constant(""), text: .constant(""))
}
