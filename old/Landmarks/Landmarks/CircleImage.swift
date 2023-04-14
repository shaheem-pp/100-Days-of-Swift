//
//  CircleImage.swift
//  Landmarks
//
//  Created by Shaheem PP on 13/04/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("applePark")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white, lineWidth: 4)
            )
            .shadow(radius: 7)
    }
    
    
    struct CircleImage_Previews: PreviewProvider {
        static var previews: some View {
            CircleImage()
        }
    }    
}
