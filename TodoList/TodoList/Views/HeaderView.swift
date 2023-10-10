//
//  headerView.swift
//  TodoList
//
//  Created by Shaheem PP on 13/09/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.cyan)
                .rotationEffect(Angle(degrees: 15))
            
            
            VStack{
                Text("To Do List")
                    .font(.system(size: 48))
                    .foregroundColor(.white)
                    .bold()
                Text("Get Things Done!")
                    .font(.system(size: 36))
                    .foregroundColor(.white)
            }
            .padding(.top,30)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 300)
        .offset(y:-100)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
