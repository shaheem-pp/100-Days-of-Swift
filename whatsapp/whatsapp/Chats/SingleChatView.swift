//
//  SingleChatView.swift
//  whatsapp
//
//  Created by Shaheem PP on 26/01/24.
//

import SwiftUI
import CoreMotion

struct SingleChatView: View {
    @State private var xTranslation: CGFloat = 0
    @State private var yTranslation: CGFloat = 0
    private let motionManager = CMMotionManager()
    
    var body: some View {
        GeometryReader { geometry in
            Image("backgroundimage")
                .resizable()
                .scaledToFill()
                .frame(width: geometry.size.width * 1.2, height: geometry.size.height * 1.2)
                .offset(x: xTranslation, y: yTranslation)
                .onAppear {
                    startMotionUpdates()
                }
        }.edgesIgnoringSafeArea(.all)
    }
    
    private func startMotionUpdates() {
        if motionManager.isAccelerometerAvailable {
            motionManager.accelerometerUpdateInterval = 0.05 // Adjust this for smoother updates
            motionManager.startAccelerometerUpdates(to: .main) { (data, error) in
                guard let data = data else { return }
                
                let translationFactor: CGFloat = 20.0
                let targetX = CGFloat(data.acceleration.x) * translationFactor
                let targetY = CGFloat(data.acceleration.y) * translationFactor
                
                // Interpolate for smoother transition
                withAnimation(.linear(duration: 0.1)) {
                    self.xTranslation = targetX
                    self.yTranslation = targetY
                }
            }
        }
    }
    
}



#Preview {
    SingleChatView()
}
