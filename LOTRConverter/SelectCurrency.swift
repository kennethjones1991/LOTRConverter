//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

import SwiftUI

struct SelectCurrency: View {
    @State var gridLayout = [GridItem(), GridItem(), GridItem()]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Background parchment image
            Image("parchment")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .background(.brown)
            
            VStack {
                // Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency icons
                LazyVGrid(columns: gridLayout) {
                    ForEach(0..<5) { _ in
                        CurrencyIcon(currencyImage: "copperpenny", currencyText: "Copper Penny")
                    }
                }
                
                // Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                // Currency icons
                
                // Done button
                Button("Done") {
                    dismiss()
                }
                .font(.largeTitle)
                .padding(10)
                .foregroundColor(.white)
                .background(.brown)
                .cornerRadius(15)
            }
        }
    }
}

struct SelectCurrency_Previews: PreviewProvider {
    static var previews: some View {
        SelectCurrency()
    }
}
