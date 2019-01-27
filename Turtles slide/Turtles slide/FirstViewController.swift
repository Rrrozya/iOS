//
//  FirstViewController.swift
//  Turtles slide
//
//  Created by Георгий Розовский on 27/01/2019.
//  Copyright © 2019 Георгий Розовский. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! MyTableViewCell
        cell.myImage.image = UIImage(named: "turtle.jpg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! MyTableViewCell
        //cell.speed = newSpeedValue
        cell.speed = globalSpeed[indexPath.row]
        cell.animateTurtle()
    }
    
    
    
    @IBAction func startAll(_ sender: UIButton) {
        myTableView.reloadData()
        let tableview = myTableView as UITableView
        let index = IndexPath(row: 0, section: 0)
        let cell = tableview.cellForRow(at: index) as! MyTableViewCell
        let index1 = IndexPath(row: 1, section: 0)
        let cell1 = tableview.cellForRow(at: index1) as! MyTableViewCell
        let index2 = IndexPath(row: 2, section: 0)
        let cell2 =  tableview.cellForRow(at: index2) as! MyTableViewCell
        let index3 = IndexPath(row: 3, section: 0)
        let cell3 =  tableview.cellForRow(at: index3) as! MyTableViewCell
        cell.speed = globalSpeed[0]
        cell1.speed = globalSpeed[1]
        cell2.speed = globalSpeed[2]
        cell3.speed = globalSpeed[3]
        cell.animateTurtle()
        cell1.animateTurtle()
        cell2.animateTurtle()
        cell3.animateTurtle()
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        let tableview = myTableView as UITableView
        let index = IndexPath(row: 0, section: 0)
        let cell = tableview.cellForRow(at: index) as! MyTableViewCell
        let index1 = IndexPath(row: 1, section: 0)
        let cell1 = tableview.cellForRow(at: index1) as! MyTableViewCell
        let index2 = IndexPath(row: 2, section: 0)
        let cell2 =  tableview.cellForRow(at: index2) as! MyTableViewCell
        let index3 = IndexPath(row: 3, section: 0)
        let cell3 =  tableview.cellForRow(at: index3) as! MyTableViewCell
        cell.goBack()
        cell1.goBack()
        cell2.goBack()
        cell3.goBack()
    }
    
    
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        settingsVC = UIStoryboard(name: "Main", bundle: nil)
    //            .instantiateViewController(withIdentifier: "Settings") as! SecondViewController
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
