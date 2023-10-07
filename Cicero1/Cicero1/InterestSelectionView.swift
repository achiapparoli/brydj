import SwiftUI

struct InterestSelectionView: View {
    @State private var interests: [String] = []
    let possibleInterests = ["Restaurants", "Art", "Music", "Bars", "Clubs"]
    
    var body: some View {
        List {
            ForEach(possibleInterests, id: \.self) { interest in
                Button(action: {
                    selectInterest(interest)
                }) {
                    Text(interest)
                        .foregroundColor(interests.contains(interest) ? .red : .black)
                }
            }
        }
        .navigationTitle("Select Interests")
        .navigationBarItems(trailing: NavigationLink(destination: RecommendedPlaceView(), label: {
            Text("Next")
        }))
    }
    
    func selectInterest(_ interest: String) {
        if interests.contains(interest) {
            interests.removeAll { $0 == interest }
        } else if interests.count < 3 {
            interests.append(interest)
        }
    }
}
