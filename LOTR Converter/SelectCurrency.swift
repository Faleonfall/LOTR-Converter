//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 09.02.2024.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
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
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(0..<5) { _ in
                        CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
                    }
                }
                
                //Text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                //Icons
                
                //Buttom
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
