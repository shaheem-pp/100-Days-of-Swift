import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .statusBar(hidden: true)
                    .frame(height: 250)
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading, spacing: 20) {
                    VStack {
                        Text("Apple Park")
                            .font(.title)
                    }.padding(.top, 20)
                    HStack {
                        Text("One Apple Park Way")
                            .font(.subheadline)
                        Spacer()
                        Text("Cupertino")
                            .font(.subheadline)
                    }
                    Divider()
                    Text("About Apple park")
                        .font(.title2)
                    Text(aboutApplePark)
                        .padding()
                }.padding([.horizontal, .bottom], 20)
            }
            .padding(.top, -20)
        }
        .ignoresSafeArea()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
