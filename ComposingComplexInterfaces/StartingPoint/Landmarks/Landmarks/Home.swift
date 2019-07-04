//
//  Home.swift
//  Landmarks
//
//  Created by Botao Li on 7/4/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CategoryHome : View {
	
	var categories: [String: [Landmark]] {
		.init(grouping: landmarkData) { (element) -> String in
			element.category.rawValue
		}
	}
	
    var body: some View {
		NavigationView {
			List {
				ForEach(categories.keys.sorted().identified(by: \.self)) { key in
					CategoryRow(categoryName: key, items: self.categories[key]!)
				}
			}
			.navigationBarTitle(Text("Featured"))
		}
    }
}

