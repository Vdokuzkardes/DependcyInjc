//
//  BgProviding.swift
//  DependcyInjc
//
//  Created by Vedat Dokuzkardeş on 8.12.2023.
//

import Foundation
import UIKit

class BgProviding : BgProviderProtocol {
    
    var bgcolor: UIColor {
        
        let bgColors : [UIColor] = [.systemRed,.systemOrange,.systemYellow,.systemGreen]
        return bgColors.randomElement()!
    }
    
    
}
