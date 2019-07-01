//
//  CircleImage.swift
//  SwiftUITest
//
//  Created by Botao Li on 6/4/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        Image("sample")
			.frame(width: 250, height: 250)
			.clipShape(Circle())
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			.shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
