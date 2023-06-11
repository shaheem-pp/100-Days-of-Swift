//
//  CircleImage.swift
//  HQs
//
//  Created by Shaheem PP on 11/06/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        VStack {
            Image("applePark")
                .resizable()
                .frame(height: 300)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(radius: 7)
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
