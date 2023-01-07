//
//  card.swift
//  lcoSwiftUI
//
//  Created by Shaheem PP on 30/06/22.
//

import SwiftUI

struct card: View {
    var body: some View {
        ZStack{
            Image("img-1").offset(y:-40)
            
            
        }.frame(width: 335, height: 550)
            .background(Color("LCOred"))
            .cornerRadius(18)
        
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card()
        
    }
}
