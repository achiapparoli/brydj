import Combine
import SwiftUI

class SessionManager: ObservableObject {
    static let shared = SessionManager() // Singleton instance
    
    @Published var isAuthenticated: Bool = false
    
    init() {
        // Initialization code
        // For example, you might check for a valid user token here
    }
    
    func login(username: String, password: String) {
        // In a real app, perform actual login via an API and receive a token
        // For this example, we assume login is always successful
        self.isAuthenticated = true
    }
    
    func logout() {
        // In a real app, invalidate the user token and perform other cleanup
        // For this example, we simply set isAuthenticated to false
        self.isAuthenticated = false
    }
}
