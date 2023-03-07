//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: String
    let currencyText: String
    
    var body: some View {
        ZStack {
            // Currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // Currency text
            VStack {
                Spacer()
                
                Text(currencyText)
                    .padding(3)
                    .font(.caption)
                    .frame(maxWidth: .infinity)
                    .background(.brown.opacity(0.75))
            }
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.brown)
        .cornerRadius(25)
    }
}

struct CurrencyIcon_Previews: PreviewProvider {
    static var previews: some View {
        CurrencyIcon(currencyImage: Currency.goldPenny.image, currencyText: Currency.goldPenny.text)
    }
}
