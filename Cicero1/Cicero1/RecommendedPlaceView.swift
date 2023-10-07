import SwiftUI

struct RecommendedPlaceView: View {
    @State private var recommendedPlace: String = ""
    @EnvironmentObject var sessionManager: SessionManager // Injected Environment Object
    
    var body: some View {
        VStack {
            TextField("What place do you recommend?", text: $recommendedPlace)
                .padding()
                .border(Color.gray, width: 0.5)
            
            Button("Complete Sign Up") {
                // Here you may want to save or use the recommendedPlace value.
                // Then, set isAuthenticated to true to perform navigation.
                self.sessionManager.isAuthenticated = true
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .navigationTitle("Recommend a Place")
    }
}
