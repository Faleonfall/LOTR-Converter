//
//  CurrencyTip.swift
//  LOTR Converter
//
//  Created by Volodymyr Kryvytskyi on 22.10.2024.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap on the currency to change it.")
}
