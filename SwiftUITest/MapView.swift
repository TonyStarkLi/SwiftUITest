//
//  MapView.swift
//  SwiftUITest
//
//  Created by Botao Li on 6/4/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	func updateUIView(_ view: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D(latitude: 34, longitude: -116)
		let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
		let region = MKCoordinateRegion(center: coordinate, span: span)
		view.setRegion(region, animated: true)
	}
}
