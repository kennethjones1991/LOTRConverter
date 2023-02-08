//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/26/23.
//

import SwiftUI

struct IconGrid: View {
    let gridLayout = [GridItem(), GridItem(), GridItem()] // Change; to let
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns: gridLayout) {
            ForEach(0..<5) { i in
                let checkCurrency = Currency.allCases[i]
                
                if checkCurrency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyText: currency.text) // Change; to use new currency image and text properties
                        .overlay(RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 3)
                            .opacity(0.5))
                        .shadow(color: .black, radius: 9)
                } else {
                    CurrencyIcon(currencyImage: checkCurrency.image, currencyText: checkCurrency.text) // Change; same as above
                        .onTapGesture {
                            currency = checkCurrency
                        }
                }
            }
        }
//        .padding([.bottom, .leading, .trailing]) // Remove
    }
}

struct IconGrid_Previews: PreviewProvider {
    static var previews: some View {
        IconGrid(currency: .constant(.silverPiece))
    }
}
