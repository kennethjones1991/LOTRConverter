//
//  Currency.swift
//  LOTRConverter
//
//  Created by Kenneth Jones on 1/25/23.
//

enum Currency: Double, CaseIterable {
    case copperPenny = 6400 // Change
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var text: String { // New
        switch self {
        case .copperPenny:
            return "Copper Penny"
        case .silverPenny:
            return "Silver Penny"
        case .silverPiece:
            return "Silver Piece"
        case .goldPenny:
            return "Gold Penny"
        case .goldPiece:
            return "Gold Piece"
        }
    }
    
    var image: String { // New
        switch self {
        case .copperPenny:
            return "copperpenny"
        case .silverPenny:
            return "silverpenny"
        case .silverPiece:
            return "silverpiece"
        case .goldPenny:
            return "goldpenny"
        case .goldPiece:
            return "goldpiece"
        }
    }
    
    func convert(amountString: String, to currency: Currency) -> String {
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

//enum CurrencyText: String, CaseIterable { // Remove
//    case copperPenny = "Copper Penny"
//    case silverPenny = "Silver Penny"
//    case silverPiece = "Silver Piece"
//    case goldPenny = "Gold Penny"
//    case goldPiece = "Gold Piece"
//}
//
//enum CurrencyImage: String, CaseIterable {
//    case copperPenny = "copperpenny"
//    case silverPenny = "silverpenny"
//    case silverPiece = "silverpiece"
//    case goldPenny = "goldpenny"
//    case goldPiece = "goldpiece"
//}
