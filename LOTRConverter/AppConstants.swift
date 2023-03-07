//
//  AppConstants.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 3/7/23.
//

import Foundation
import SwiftUI

struct AppConstants {
    static let tfPlaceholder = "Amount"
}

extension Button {
    func doneButton() -> some View {
        self
            .font(.largeTitle)
            .padding()
            .buttonStyle(.borderedProminent)
            .tint(.brown)
            .foregroundColor(.white)
    }
}

struct InfoBackgroundImage: View {
    var body: some View {
        Image("parchment")
            .resizable()
            .ignoresSafeArea()
            .background(.brown)
    }
}
