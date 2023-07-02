//
//  ContentView.swift
//  Powerball
//
//  Created by Justin Hold on 7/1/23.
//

import SwiftUI

struct ContentView: View {
	
	// MARK: - PROPERTIES
	@State private var randomNumbers: [Int] = []

	
	
	// MARK: - BODY
	var body: some View {
		NavigationStack {
			ZStack {
				Color.orange
					.ignoresSafeArea()
				VStack {
					Text("Your lucky numbers")
						.padding()
					HStack {
						ForEach(randomNumbers, id: \.self) { number in
							Text("\(number)")
								.font(.system(size: 20))
								.padding()
						}
					}
					.padding(.top, 10)
					Spacer()
					Button {
						generateRandomNumbers()
					} label: {
						Image(systemName: "dollarsign")
							.resizable()
							.scaledToFit()
							.foregroundColor(.green)
							.frame(width: 200, height: 200)
					} //: END OF BUTTON
				} //: END OF VSTACK
				.navigationTitle("Powerball")
			} //: END OF ZSTACK
		}
	}
	// MARK: - FUNCTIONS
	/// This function creates an array of 6 random numbers in the range of 1 to 70
	func generateRandomNumbers() {
		randomNumbers = (1...6).map { _ in
			Int.random(in: 1...70)
		}
	}
}

// MARK: - PREVIEWS
struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
