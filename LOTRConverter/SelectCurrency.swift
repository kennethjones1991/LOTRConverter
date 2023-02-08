//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var leftCurrency: Currency
    @Binding var rightCurrency: Currency
    
    var body: some View {
        ZStack {
            // Background parchment image
            Image("parchment")
                .resizable()
                .ignoresSafeArea() // Change
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency icons
                IconGrid(currency: $leftCurrency)
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .padding(.top) // New
                    .multilineTextAlignment(.center)
                
                // Currency icons
                IconGrid(currency: $rightCurrency)
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding()
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .foregroundColor(.white) // Change; some modifiers
            }
            .padding()
            .foregroundColor(.black) // New
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency(leftCurrency: .constant(.silverPiece), rightCurrency: .constant(.goldPiece))
    }
}
