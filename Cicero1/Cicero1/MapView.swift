import SwiftUI

struct MapView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Map View")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
            .navigationTitle("Map")
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
