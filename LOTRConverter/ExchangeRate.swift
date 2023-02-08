//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct ExchangeRate: View {
    @State var leftImage: String
    @State var text: String
    @State var rightImage: String // TODO: these 3 properties can just be let instead of @State var
    
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
            .previewLayout(.sizeThatFits) // TODO: think about how to do this with the preview always being in run mode. Maybe do it to show them and then say but if you know where it's going the full screen example won't bother you but now you know it's there if you want to use it.
    }
}
