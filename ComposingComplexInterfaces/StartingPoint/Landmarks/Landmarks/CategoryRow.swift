//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Botao Li on 7/4/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
	var categoryName: String
	var items: [Landmark]
	
	var body: some View {
		VStack {
			Text(self.categoryName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: 0) {
					ForEach(self.items) { landmark in
						Text(landmark.name)
					}
				}
			}
			.frame(height: 185)
		}
	}
}
