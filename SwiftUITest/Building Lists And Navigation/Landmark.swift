//
//  Landmark.swift
//  SwiftUITest
//
//  Created by Botao Li on 7/1/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category
	
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude)
	}
	
	func image(forSize size: Int) -> Image {
		ImageStore.shared.image(name:)
	}
}

struct Coordinates: Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
