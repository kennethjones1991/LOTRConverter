//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background image; parchment
            InfoBackgroundImage()
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                // Body text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                // Exchange rates
                ExchangeRate(leftImage: Currency.goldPiece.image, text: "1 Gold Piece = 4 Gold Pennies", rightImage: Currency.goldPenny.image)
                
                ExchangeRate(leftImage: Currency.goldPenny.image, text: "1 Gold Penny = 4 Silver Pieces", rightImage: Currency.silverPiece.image)
                
                ExchangeRate(leftImage: Currency.silverPiece.image, text: "1 Silver Piece = 4 Silver Pennies", rightImage: Currency.silverPenny.image)
                
                ExchangeRate(leftImage: Currency.silverPenny.image, text: "1 Silver Penny = 100 Copper Pennies", rightImage: Currency.copperPenny.image)
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .doneButton()
            }
            .foregroundColor(.black)
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
