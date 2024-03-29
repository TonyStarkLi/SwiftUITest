/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
//                ForEach(userData.landmarks) { landmark in
//                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
//                        NavigationView(
//                            destination: LandmarkDetail(landmark: landmark)
//                        ) {
//                            LandmarkRow(landmark: landmark)
//                        }
//                    }
//                }
            }
            .navigationBarTitle(Text("Landmarks"), displayMode: .large)
        }
    }
}

