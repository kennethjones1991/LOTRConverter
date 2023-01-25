//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            // Background image; parchment
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Title text
                Text("Exchange Rates")
                    .font(.largeTitle)
                
                // Body text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                
                // Exchange rates
                HStack {
                    // Left currency image
                    Image("goldpiece")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // Exchange rate text
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    // Right currency image
                    Image("goldpenny")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                
                // Done button
            }
        }
    }
}

struct ExchangeInfo_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeInfo()
    }
}
