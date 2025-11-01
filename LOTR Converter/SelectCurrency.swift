//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 09.02.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            //Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                //Icons
                IconGrid(currency: $topCurrency)
                
                //Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //Icons
                IconGrid(currency: $bottomCurrency)
                
                //Buttom
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 15))
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
            .onChange(of: topCurrency) { oldValue, newValue in
                // If the new top equals the current bottom, push the old top down
                if newValue == bottomCurrency {
                    bottomCurrency = oldValue
                }
            }
            .onChange(of: bottomCurrency) { oldValue, newValue in
                // If the new bottom equals the current top, pull the old bottom up
                if newValue == topCurrency {
                    topCurrency = oldValue
                }
            }
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
