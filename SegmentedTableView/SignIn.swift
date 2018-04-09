//
//  SignIn.swift
//  SegmentedTableView
//
//  Created by Appinventiv-PC on 09/04/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

import UIKit

class SignIn: UIView {

    // *********** Outlets ******************
    @IBOutlet var signInView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("SignIn", owner: self, options: nil)
        guard let content = signInView else { return }
        content.frame = self.bounds
        content.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(content)
    }
    
}
