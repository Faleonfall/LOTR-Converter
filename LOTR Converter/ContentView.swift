//
//  ContentView.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 30.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //Pony Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //Currency Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Currency section
                HStack {
                    //Left
                    VStack {
                        //Currency
                        HStack {
                            //Currency Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //Currency Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        //Textfield
                        Text("Textfield")
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //Right
                    VStack {
                        //Currency
                        HStack {
                            //Currency Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //Currency Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //Textfield
                        Text("Textfield")
                    }
                }
                
                Spacer()
                
                //Info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            //.border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
