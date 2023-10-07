import SwiftUI

import SwiftUI

struct RootView: View {
    @ObservedObject var sessionManager = SessionManager.shared
    
    var body: some View {
        if sessionManager.isAuthenticated {
            ContentView()
        } else {
            AuthenticationView()
        }
    }
}


struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
