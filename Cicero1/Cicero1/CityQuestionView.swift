import SwiftUI

struct CityQuestionView: View {
    @State private var city: String = ""
    
    var body: some View {
        VStack {
            TextField("Which city are you a local in?", text: $city)
                .padding()
                .border(Color.gray, width: 0.5)
            
            NavigationLink(destination: InterestSelectionView()) {
                Text("Next")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("City Question")
    }
}
