import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        TabView {
            ForEach(headquarters.indices, id: \.self) { index in
                let location = headquarters[index]
                
                VStack {
                    ZStack(alignment: .topLeading) {
                        Image(uiImage: UIImage(named: location.imageName)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 300)
                            .clipped()

                        
                        MapView(location: location)
                            .frame(height: 300)
                    }
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(location.name)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("\(location.city), \(location.state), \(location.country)")
                            .font(.headline)
                            .foregroundColor(.gray)
                    }
                    .padding()
                    
                    ScrollView {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("About \(location.name)")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text(location.about)
                                .font(.body)
                                .foregroundColor(.gray)
                        }
                        .padding()
                    }
                }
                .background(Color.white)
                .cornerRadius(20)
                .padding()
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Location {
    let id = UUID()
    let name: String
    let imageName: String
    let city: String
    let state: String
    let latitude: Double
    let longitude: Double
    let country: String
    let about: String
}

let headquarters: [Location] = [
    Location(
        name: "Apple Park",
        imageName: "applePark",
        city: "Cupertino",
        state: "California",
        latitude:0.0,
        longitude:0.0,
        country: "USA",
        about: "Apple Inc.'s headquarters is located in Cupertino, California, USA. Known as Apple Park, it is a sprawling campus that serves as the central hub for Apple's operations, research and development, and corporate offices. ..."
    ),
    Location(
        name: "Microsoft Headquarters",
        imageName: "microsoftHQ",
        city: "Redmond",
        state: "Washington",
        latitude:0.0,
        longitude:0.0,
        country: "USA",
        about: "Microsoft Corporation's headquarters is located in Redmond, Washington, USA. It is a vast campus that serves as the central hub for Microsoft's operations, research and development, and corporate offices. ..."
    ),
    Location(
        name: "Google Headquarters",
        imageName: "googleHQ",
        city: "Mountain View",
        state: "California",
        latitude:0.0,
        longitude:0.0,
        country: "USA",
        about: "Google's headquarters, known as the Googleplex, is situated in Mountain View, California, USA. It is a vibrant campus where Google employees work on various projects, innovation, and research. ..."
    ),
    Location(
        name: "Meta Headquarters",
        imageName: "meta",
        city: "Menlo Park",
        state: "California",
        latitude:0.0,
        longitude:0.0,
        country: "USA",
        about: "Meta, formerly known as Facebook, has its headquarters in Menlo Park, California, USA. The sprawling campus serves as the central location for Meta's leadership, research labs, and innovative projects. ..."
    )
]



struct MapView: UIViewRepresentable {
    let location: Location
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = false
        
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = location.name
        mapView.addAnnotation(annotation)
        
        mapView.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)), animated: true)
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        // Update the map view if needed
    }
}







//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        TabView {
//
//            // Apple HQ Card
//            VStack {
//                Image("applePark")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 300)
//                    .clipped()
//
//                Text("Apple Park")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Cupertino, California, USA")
//                    .font(.headline)
//                    .foregroundColor(.gray)
//
//                Spacer()
//
//                Text("About Apple Headquarters")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Apple Inc.'s headquarters is located in Cupertino, California, USA. Known as Apple Park, it is a sprawling campus that serves as the central hub for Apple's operations, research and development, and corporate offices. The campus is situated at 1 Apple Park Way, Cupertino, CA 95014. Designed by architect Norman Foster of Foster + Partners, the main building, often referred to as the 'Spaceship,' features a distinctive circular design with curved glass panels, making it an architectural marvel. Apple Park spans approximately 175 acres and boasts extensive landscaped grounds with thousands of trees. The campus is not only visually stunning but also highly energy-efficient, incorporating sustainable features such as a solar panel installation for renewable energy generation. Apple employees at the headquarters enjoy various amenities, including a large cafeteria, fitness center, research and development facilities, and the Steve Jobs Theater, an underground auditorium used for special events and product launches.")
//                    .font(.body)
//                    .foregroundColor(.gray)
//                    .padding()
//            }
//            .background(Color.white)
//            .cornerRadius(20)
//            .padding()
//            .tag(0)
//
//            // Microsoft HQ Card
//            VStack {
//                Image("microsoftHQ")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 300)
//                    .clipped()
//
//                Text("Microsoft Headquarters")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Redmond, Washington, USA")
//                    .font(.headline)
//                    .foregroundColor(.gray)
//
//                Spacer()
//
//                Text("About Microsoft Headquarters")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Microsoft Corporation's headquarters is located in Redmond, Washington, USA. It is a vast campus that serves as the central hub for Microsoft's operations, research and development, and corporate offices. Situated in Redmond, the campus encompasses numerous buildings and facilities, providing a collaborative environment for Microsoft employees. The headquarters is known for its innovative and forward-thinking approach to technology and software development.")
//                    .font(.body)
//                    .foregroundColor(.gray)
//                    .padding()
//            }
//            .background(Color.white)
//            .cornerRadius(20)
//            .padding()
//            .tag(0)
//
//
//            // Google HQ Card
//            VStack {
//                Image("googleHQ")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 300)
//                    .clipped()
//
//                Text("Google Headquarters")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Mountain View, California, USA")
//                    .font(.headline)
//                    .foregroundColor(.gray)
//
//                Spacer()
//
//                Text("About Google Headquarters")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Google's headquarters, known as the Googleplex, is situated in Mountain View, California, USA. It is a vibrant campus where Google employees work on various projects, innovation, and research. The Googleplex features a diverse range of facilities, including offices, research labs, recreational areas, and unique spaces designed to foster creativity and collaboration. The headquarters embodies Google's culture of innovation and serves as a hub for developing groundbreaking technologies and services.")
//                    .font(.body)
//                    .foregroundColor(.gray)
//                    .padding()
//            }
//            .background(Color.white)
//            .cornerRadius(20)
//            .padding()
//            .tag(1)
//
//
//            // Meta HQ Card
//            VStack {
//                Image("meta")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(height: 300)
//                    .clipped()
//
//                Text("Meta Headquarters")
//                    .font(.title)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Menlo Park, California, USA")
//                    .font(.headline)
//                    .foregroundColor(.gray)
//
//                Spacer()
//
//                Text("About Meta Headquarters")
//                    .font(.title2)
//                    .fontWeight(.bold)
//                    .padding()
//
//                Text("Meta, formerly known as Facebook, has its headquarters in Menlo Park, California, USA. The sprawling campus serves as the central location for Meta's leadership, research labs, and innovative projects. The headquarters is designed to foster a collaborative and creative environment, enabling Meta employees to work on cutting-edge technologies and advance the company's mission of connecting people and building communities.")
//                    .font(.body)
//                    .foregroundColor(.gray)
//                    .padding()
//            }
//            .background(Color.white)
//            .cornerRadius(20)
//            .padding()
//            .tag(2)
//        }
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
////import SwiftUI
////
////struct ContentView: View {
////    var body: some View {
////        ScrollView {
////            VStack {
////                MapView()
////                    .ignoresSafeArea(edges: .top)
////                    .frame(height: 300)
////
////                CircleImage()
////                    .offset(y: -130)
////                    .padding(.bottom, -130)
////
////                VStack(alignment: .leading, spacing: 10) {
////                    Text("Steve Jobs Theatre")
////                        .font(.largeTitle)
////                        .fontWeight(.bold)
////
////                    Text("Apple Park")
////                        .font(.headline)
////
////                    HStack {
////                        Image(systemName: "location")
////                            .foregroundColor(.gray)
////
////                        Text("Cupertino, CA, USA")
////                            .foregroundColor(.gray)
////                    }
////                }
////                .padding(.horizontal, 20)
////                .padding(.top, 20)
////
////                Divider()
////
////                VStack(alignment: .leading, spacing: 10) {
////                    Text("About Steve Jobs Theatre")
////                        .font(.title2)
////                        .fontWeight(.bold)
////
////                    Text("The Steve Jobs Theatre is an auditorium located at Apple Park in Cupertino, California. It is named after Steve Jobs, the co-founder and former CEO of Apple Inc. The theatre is used for hosting Apple's special events, product launches, and other presentations.")
////                        .font(.body)
////                        .foregroundColor(.gray)
////                }
////                .padding()
////
////                Spacer()
////            }
////            .background(Color.white)
////            .cornerRadius(20)
////            .shadow(radius: 10)
////            .padding()
////        }
////    }
////}
////
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
