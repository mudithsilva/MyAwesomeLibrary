//
//  StringExtension.swift
//  PharmEasy
//
//  Created by Mudith Chathuranga on 10/23/18.
//  Copyright © 2018 Ceffectz. All rights reserved.
//

import Foundation

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
