//
//  StringExtension.swift
//  PharmEasy
//
//  Created by Mudith Chathuranga on 10/23/18.
//  Copyright © 2018 Ceffectz. All rights reserved.
//

import Foundation
import UIKit

extension String {
    
    enum LocalizedCountry: String {
        case English = "en"
        case Sinhala = "si"
        case Tamil = "ta-LK"
    }
    
    func localized(lang: LocalizedCountry) -> String {
        
        let path = Bundle.main.path(forResource: lang.rawValue, ofType: "lproj")
        let bundle = Bundle(path: path!)
        
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "**\(self)**", comment: "")
    }
    
    /*
     "<key>" = "<value>"; on localise file
     
     "data_loaded".localized(lang: .English) // Data Loaded! if available
     "hello_world".localized(lang: .English) // **hello_world** key load if not available
 
     */
}



extension String {
    func strikeThrough() -> NSAttributedString {
        let strickThroughString = NSAttributedString(string: self, attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        return strickThroughString
    }
    
    func calculateTextWidth(fontName: String, fontSize: CGFloat, marigine: CGFloat) -> CGFloat {
        let font: UIFont = UIFont(name: fontName, size: fontSize)!
        let attributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: attributes).width + marigine
    }
}
