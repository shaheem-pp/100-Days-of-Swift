//
//  ContentView.swift
//  Navbar
//
//  Created by Shaheem PP on 04/10/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        Spacer()
            
        ZStack{
            Rectangle()
                .frame(height: 80)
            Circle()
                .frame(height: 100)
                .offset(y:-10)
            Circle()
                .frame(height: 80)
                .offset(x:20, y:-10)
            Circle()
                .frame(height: 80)
                .offset(x:-20, y:-10)
        }
    }
}

#Preview {
    ContentView()
}
