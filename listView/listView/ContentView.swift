//
//  ContentView.swift
//  listView
//
//  Created by Shaheem PP on 10/10/23.
//

import SwiftUI
struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(viewModel.images, id: \.self.imageName) { image in
                            ImageCardView(image: image)
                                .onTapGesture {
                                    viewModel.didSelectImage(image: image)
                                }
                        }
                        .padding(.vertical, 5)
                    }
                    .padding()
                }
                .background(Color.gray.opacity(0.2))
                
                Text(viewModel.selectedImage?.imageName.uppercased() ?? "")
                    .font(.title)
                    .padding()
                
                Spacer()
                
                Text(viewModel.selectedImage?.description ?? "")
                    .padding(.horizontal, 50)
                    .padding(.vertical, 20)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
