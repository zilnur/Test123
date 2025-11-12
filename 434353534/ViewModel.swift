//
//  ViewModel.swift
//  Test
//
//  Created by Ильнур Закиров on 19.10.2025.
//

import Foundation
import Combine

protocol TopLeadingViewModel: ObservableObject {
	var topLeadingState: String { get }
	func changeTopLeadingState(_ string: String)
}

protocol TopTrailingViewModel: ObservableObject {
	var topTrailingState: String { get }
	func changeTopTrailingState(_ string: String)
}

protocol BottomLeadingViewModel: ObservableObject {
	var bottomLeadingState: String { get }
	func changeBottomLeadingState(_ string: String)
}

protocol BottomTrailingViewModel: ObservableObject {
	var bottomTrailingState: String { get }
	func changeBottomTrailingState(_ string: String)
}

class ViewModel1 {
	
	@Published
	private var model1 = "kewufewujnfewf"
	
	@Published
	private var model2 = "rwkgnbhwegf"
	
	@Published
	private var model3 = "wkrifnjwef"
	
	@Published
	private var model4 = "mwenfjwefm"
}


extension ViewModel1: TopLeadingViewModel {
	var topLeadingState: String {
		model1
	}
	
	func changeTopLeadingState(_ string: String) {
		model1 = string
	}
}

extension ViewModel1: TopTrailingViewModel {
	var topTrailingState: String {
		model2
	}
	
	func changeTopTrailingState(_ string: String) {
		model2 = string
	}
}

extension ViewModel1: BottomLeadingViewModel {
	var bottomLeadingState: String {
		model3
	}
	
	func changeBottomLeadingState(_ string: String) {
		model3 = string
	}
}

extension ViewModel1: BottomTrailingViewModel {
	
	var bottomTrailingState: String {
		model4
	}
	
	func changeBottomTrailingState(_ string: String) {
		model4 = string
	}
}
