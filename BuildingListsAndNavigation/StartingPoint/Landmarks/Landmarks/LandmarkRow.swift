//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Botao Li on 7/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
	
	var landmark: Landmark
	
    var body: some View {
		HStack {
			landmark.image(forSize: 50)
			Text(landmark.name)
		}
    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
#endif
