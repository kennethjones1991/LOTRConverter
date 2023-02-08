//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: String // Change; all 3 from @State var to let
    let text: String
    let rightImage: String
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

struct ExchangeRate_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeRate(leftImage: "goldpenny", text: "1 Gold Penny = 4 Silver Pieces", rightImage: "silverpiece")
//            .previewLayout(.sizeThatFits) // Remove; messes with preview
    }
}
