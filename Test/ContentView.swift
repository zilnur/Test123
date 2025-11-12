//
//  ContentView.swift
//  Test
//
//  Created by Ильнур Закиров on 19.10.2025.
//

import SwiftUI

typealias SumViewModel = TopLeadingViewModel & TopTrailingViewModel & BottomTrailingViewModel & BottomLeadingViewModel

struct ContentView<T: SumViewModel>: View {
	
	let viewModel: T
	@State var offset: CGFloat = 0
	
    var body: some View {
		VStack {
			HStack {
				TopLeadigView(viewModel: viewModel)
				TopTrailingView(viewModel: viewModel)
			}
			HStack {
				BottomLeadigView(viewModel: viewModel)
				BottomTrailingView(viewModel: viewModel)
			}
		}
    }
}

struct TopLeadigView<VM: TopLeadingViewModel>: View, Equatable {
	
	@ObservedObject
	var viewModel: VM
	
	init(viewModel: VM) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		VStack {
			Text(viewModel.topLeadingState)
				.debugColor()
			
			TextEditor(
				text: .init(
					get: { viewModel.topLeadingState },
					set: viewModel.changeTopLeadingState(_:)
				)
			)
			.frame(height: 100)
			.debugColor()
		}
		.debugColor()
	}
	
	static func ==(lhs: Self, rhs: Self) -> Bool {
		lhs.viewModel.topLeadingState == rhs.viewModel.topLeadingState
	}
}

struct TopTrailingView<VM: TopTrailingViewModel>: View, Equatable {
	
	@ObservedObject
	var viewModel: VM
	
	init(viewModel: VM) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		VStack {
			Text(viewModel.topTrailingState)
				.debugColor()
			
			TextEditor(
				text: .init(
					get: { viewModel.topTrailingState },
					set: viewModel.changeTopTrailingState(_:)
				)
			)
			.frame(height: 100)
			.debugColor()
		}
		.debugColor()
	}
	
	static func ==(lhs: Self, rhs: Self) -> Bool {
		lhs.viewModel.topTrailingState == rhs.viewModel.topTrailingState
	}
}

struct BottomLeadigView<VM: BottomLeadingViewModel>: View, Equatable {
	
	@ObservedObject
	var viewModel: VM
	
	init(viewModel: VM) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		VStack {
			Text(viewModel.bottomLeadingState)
				.debugColor()
			
			TextEditor(
				text: .init(
					get: { viewModel.bottomLeadingState },
					set: viewModel.changeBottomLeadingState(_:)
				)
			)
			.frame(height: 100)
			.debugColor()
		}
		.debugColor()
	}
	
	static func ==(lhs: Self, rhs: Self) -> Bool {
		lhs.viewModel.bottomLeadingState == rhs.viewModel.bottomLeadingState
	}
}

struct BottomTrailingView<VM: BottomTrailingViewModel>: View, Equatable {
	
	@ObservedObject
	var viewModel: VM
	
	init(viewModel: VM) {
		self.viewModel = viewModel
	}
	
	var body: some View {
		VStack {
			Text(viewModel.bottomTrailingState)
				.debugColor()
			
			TextEditor(
				text: .init(
					get: { viewModel.bottomTrailingState },
					set: viewModel.changeBottomTrailingState(_:)
				)
			)
			.frame(height: 100)
			.debugColor()
		}
		.debugColor()
	}
	
	static func ==(lhs: Self, rhs: Self) -> Bool {
		lhs.viewModel.bottomTrailingState == rhs.viewModel.bottomTrailingState
	}
}

extension View {
	
	func debugColor() -> some View {
		background(
			Color(
				red: .random(in: 0...1),
				green: .random(in: 0...1),
				blue: .random(in: 0...1)
			)
		)
	}
}
