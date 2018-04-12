//
//  ButtonGradient.swift
//  SegmentedTableView
//
//  Created by Appinventiv-PC on 09/04/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

import Foundation
import UIKit
class ButtonGradient : UIButton {
    @IBInspectable var firstColor:UIColor = UIColor.clear
        {
          didSet{
                 updateButton()
          }
        }
    @IBInspectable var secondColor:UIColor = UIColor.clear
        {
         didSet{
            updateButton()
         }
        }
    override class var layerClass: Swift.AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    func updateButton() {
        let layer = self.layer as! CAGradientLayer
        layer.colors=[firstColor.cgColor,secondColor.cgColor]
    }
}


