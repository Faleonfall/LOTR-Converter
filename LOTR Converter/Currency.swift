//
//  Currency.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 16.02.2024.
//

import SwiftUI

enum Currency: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case silverPiece = 16
    case goldPenny = 4
    case goldPiece = 1
    
    var id: Double { rawValue }
    
    var image: ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .silverPiece:
                .silverpiece
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        }
    }
    
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .silverPiece:
            "Silver Piece"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        }
    }
    
    func convert(_ amountString: String, to currency: Currency) -> String {
        // Formatter that follows user’s region *and* number format settings
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        
        // Parse input using user’s actual decimal separator
        guard let number = formatter.number(from: amountString) else {
            return ""
        }
        
        let doubleAmount = number.doubleValue
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        
        // Format output again using user’s same system preference
        return formatter.string(from: NSNumber(value: convertedAmount)) ?? ""
    }
    
}
