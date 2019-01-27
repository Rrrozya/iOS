//
//  SecondViewController.swift
//  Turtles slide
//
//  Created by Георгий Розовский on 27/01/2019.
//  Copyright © 2019 Георгий Розовский. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var speedValue: Double = 0.0
    @IBOutlet weak var lbl: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        lbl.text = String(sender.value)
        speedValue = Double(sender.value)
        globalSpeed[0] = speedValue
    }
    
    @IBOutlet weak var lbl2: UILabel!
    @IBAction func slider2(_ sender: UISlider) {
        lbl2.text = String(sender.value)
        globalSpeed[1] = Double(sender.value)
    }
    
    @IBOutlet weak var lbl3: UILabel!
    @IBAction func slider3(_ sender: UISlider) {
        lbl3.text = String(sender.value)
        globalSpeed[2] = Double(sender.value)
    }
    
    @IBOutlet weak var lbl4: UILabel!
    @IBAction func slider4(_ sender: UISlider) {
        lbl4.text = String(sender.value)
        globalSpeed[3] = Double(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "Home" {
    //            let homeVC = segue.destination as! FirstViewController
    //            homeVC.newSpeedValue = speedValue
    //            homeVC.settingsVC = self
    //        }
    //    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}
