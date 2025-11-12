//
//  TestApp.swift
//  Test
//
//  Created by Ильнур Закиров on 19.10.2025.
//

import SwiftUI

@main
struct TestApp: App {
	let viewModel = ViewModel1()
    var body: some Scene {
        WindowGroup {
			ContentView(
				viewModel: viewModel
			)
        }
    }
}
