import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .border(Color.gray, width: 0.5)
                
                SecureField("Password", text: $password)
                    .padding()
                    .border(Color.gray, width: 0.5)
                
                NavigationLink(destination: CityQuestionView()) {
                    Text("Next")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Sign Up")
        }
    }
}
