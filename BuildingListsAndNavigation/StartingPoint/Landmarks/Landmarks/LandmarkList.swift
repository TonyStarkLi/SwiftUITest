//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Botao Li on 7/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
//		List {
//			LandmarkRow(landmark: landmarkData[0])
//			LandmarkRow(landmark: landmarkData[1])
//		}
		NavigationView {
			List(landmarkData) { landmark in
				NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationBarTitle(Text("Landmarks"))
		}
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
#endif
