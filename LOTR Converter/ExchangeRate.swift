//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 04.02.2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            //Left Image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //Rate
            Text(text)
            
            //Right Image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
