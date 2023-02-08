//
//  Currency.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

enum Currency: Double, CaseIterable {
    case copperPenny = 640 // TODO: This should actually be 6400, not 640
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    func convert(amountString: String, to currency: Currency) -> String { // TODO: this function will probably change if we change the TextFields to use a currency value instead of text
        guard let startAmount = Double(amountString) else {
            return ""
        }
        
        let convertedAmount = (startAmount / self.rawValue) * currency.rawValue
        
        if convertedAmount > 0 {
            return String(format: "%.2f", convertedAmount)
        } else {
            return ""
        }
    }
}

enum CurrencyText: String, CaseIterable { // TODO: instead of having CurrencyText and CurrencyImage, just throw a couple computed properties in the Currency model called text and imageName and then switch over the cases and return the proper strings
    case copperPenny = "Copper Penny"
    case silverPenny = "Silver Penny"
    case silverPiece = "Silver Piece"
    case goldPenny = "Gold Penny"
    case goldPiece = "Gold Piece"
}

enum CurrencyImage: String, CaseIterable {
    case copperPenny = "copperpenny"
    case silverPenny = "silverpenny"
    case silverPiece = "silverpiece"
    case goldPenny = "goldpenny"
    case goldPiece = "goldpiece"
}
