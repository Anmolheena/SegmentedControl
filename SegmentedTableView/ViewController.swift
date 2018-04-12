//
//  ViewController.swift
//  SegmentedTableView
//
//  Created by Appinventiv-PC on 09/04/18.
//  Copyright © 2018 Appinventiv-PC. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    //Mark :- Properties *********************
    var timer : Timer!
    var imageArray = [1,2,3]
    // ****************** Outlets   **************************
    @IBOutlet weak var segmentedTbleview: UISegmentedControl!
    @IBOutlet weak var ViewContainingFields: UIView!
    @IBOutlet weak var viewContainingSignIn: UIView!
    @IBOutlet weak var viewContainingSignUp:UIView!
    @IBOutlet weak var imageToShowDifferentView: UIImageView!
    // ***************  view lifecycle *****************
    override func viewDidLoad() {
        super.viewDidLoad()
       ViewContainingFields.addSubview(viewContainingSignUp)
    self.timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(self.changeImageWithTime), userInfo: nil, repeats: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 //************************ segmentedcontrol Action ****************
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        let index = segmentedTbleview.selectedSegmentIndex
            if index == 0 {
            ViewContainingFields.addSubview(viewContainingSignUp)
        }else{
            ViewContainingFields.addSubview(viewContainingSignIn)
            print("second is working")
        }
   }
  @objc func changeImageWithTime()
    {
        imageToShowDifferentView.image = UIImage(named: "\(arc4random_uniform(UInt32(imageArray.count))).jpg")
        print("\(arc4random_uniform(UInt32(imageArray.count))).jpg")
    }
}




