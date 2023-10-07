import SwiftUI

struct AuthenticationView: View {
    @ObservedObject var sessionManager: SessionManager = SessionManager.shared
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer() // This will push the content to the bottom

                Text("Welcome to Cicero")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40) // Add some space between the title and buttons
                
                Button(action: {
                    self.sessionManager.login(username: "user", password: "pass")
                }) {
                    Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity) // This makes the button expand to fill the available width
                        .padding(.vertical) // Vertical padding to increase the height of the button
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal) // Add horizontal padding to the sides of the button

                // Add some space between the buttons
                Spacer().frame(height: 20)
                
                NavigationLink(destination: SignupView()) {
                    Text("Sign Up")
                        .frame(minWidth: 0, maxWidth: .infinity) // This makes the button expand to fill the available width
                        .padding(.vertical) // Vertical padding to increase the height of the button
                }
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding(.horizontal) // Add horizontal padding to the sides of the button
                
                Spacer().frame(height: 100) // Add space at the bottom if needed
            }
            .padding()
        }
    }
}
