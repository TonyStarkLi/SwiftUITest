//
//  UserData.swift
//  Landmarks
//
//  Created by Botao Li on 7/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
	
	let didChange = PassthroughSubject<UserData, Never>()
	
	var showFavoritesOnly = false {
		didSet {
			didChange.send(self)
		}
	}
	var landmarks = landmarkData {
		didSet {
			didChange.send(self)
		}
	}
}

