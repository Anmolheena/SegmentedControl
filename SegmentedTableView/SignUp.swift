//
//  SignUp.swift
//  SegmentedTableView
//
//  Created by Appinventiv-PC on 09/04/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

import Foundation
import UIKit
class SignUp:UIView{
   
    @IBOutlet var signUpView: UIView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignUp", owner: self, options: nil)
        guard let content = signUpView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
    }
    
}
