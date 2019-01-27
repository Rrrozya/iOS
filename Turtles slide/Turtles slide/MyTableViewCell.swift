//
//  MyTableViewCell.swift
//  Turtles slide
//
//  Created by Георгий Розовский on 27/01/2019.
//  Copyright © 2019 Георгий Розовский. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var leading: NSLayoutConstraint!
    
    //var settingsVC: SecondViewController!
    var speed = 0.0
    
    func animateTurtle(){
        leading.constant = 0
        self.layoutIfNeeded()
        
        UIView.animate(withDuration: speed) {
            print("animation started")
            self.leading.constant = 160
            print("animation finished")
            self.layoutIfNeeded()
        }
    }
    
    func goBack(){
        self.leading.constant = 0
        self.layoutIfNeeded()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
