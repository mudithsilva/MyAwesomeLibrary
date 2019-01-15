//
//  UILabelExtension.swift
//  MyAwesomeLibrary
//
//  Created by Mudith Chathuranga on 1/15/19.
//  Copyright © 2019 Chathuranga. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func lines(label: UILabel) -> Int {
        let textSize = CGSize(width: label.frame.size.width, height: CGFloat(Float.infinity))
        let rHeight = lroundf(Float(label.sizeThatFits(textSize).height))
        let charSize = lroundf(Float(label.font.lineHeight))
        let lineCount = rHeight/charSize
        return lineCount
    }
    
}
