//
//  AddFriendsViewController.swift
//  ToyotaTripsHackathon
//
//  Created by Pramith Prasanna on 11/13/22.
//

import UIKit

class AddFriendsViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    @IBOutlet weak var buttonFour: UIButton!
    
    
    @IBOutlet weak var buttonFive: UIButton!
    
    
    @IBOutlet weak var buttonSix: UIButton!
    
    var flag1 = false
    var flag2 = false
    var flag3 = false
    var flag4 = false
    var flag5 = false
    var flag6 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func checkButtonOne(_ sender: Any) {
        if (!flag1) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag1 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag1 = false
        }
    }
    
    
    @IBAction func checkButtonTwo(_ sender: Any) {
        if (!flag2) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag2 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag2 = false
        }
    }
    
    
    @IBAction func checkButtonThree(_ sender: Any) {
        if (!flag3) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag3 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag3 = false
        }
    }
    
    @IBAction func checkButtonFour(_ sender: Any) {
        if (!flag4) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag4 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag4 = false
        }
    }
    
    
    @IBAction func checkButtonFive(_ sender: Any) {
        if (!flag5) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag5 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag5 = false
        }
    }
    
    @IBAction func checkButtonSix(_ sender: Any) {
        if (!flag6) {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"checkmark.square.fill"), for: UIControl.State.normal)
            flag6 = true
        } else {
            (sender as AnyObject).setBackgroundImage(UIImage(named:"multiply.square.fill"), for: UIControl.State.normal)
            flag6 = false
        }
    }
    
}
