//
//  ViewController.swift
//  TVCandXIB
//
//  Created by Pawel on 13.09.2016.
//  Copyright © 2016 LiczekCompany. All rights reserved.
//

import UIKit

struct cellData {
    
    let cell : Int!
    let text : String!
    let image : UIImage!
    
}


class TableViewController: UITableViewController {
    
    var arrayOfCellData = [cellData]()
    
    override func viewDidLoad() {
        
        arrayOfCellData = [cellData(cell: 1, text: "meal 1", image: UIImage(named: "meal1")),
            cellData(cell: 2, text: "meal 2", image: UIImage(named: "meal2")),
            cellData(cell: 1, text: "meal 3", image: UIImage(named: "meal3"))]
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if arrayOfCellData[indexPath.row].cell == 1{
            
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell1", owner: self, options: nil).first as! TableViewCell1
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell2", owner: self, options: nil).first as! TableViewCell2
            
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
            
        }
        else {
            let cell = NSBundle.mainBundle().loadNibNamed("TableViewCell1", owner: self, options: nil).first as! TableViewCell1
            cell.mainImageView.image = arrayOfCellData[indexPath.row].image
            cell.mainLabel.text = arrayOfCellData[indexPath.row].text
            
            return cell
        }
        
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if arrayOfCellData[indexPath.row].cell == 1{
            
            return 205
            
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
           
            return 106
            
        }
        else {
            
            return 205
            
        }

    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if arrayOfCellData[indexPath.row].cell == 1{
            let meal = arrayOfCellData[indexPath.row].text
            let newVC = storyboard?.instantiateViewControllerWithIdentifier(String(meal))
            navigationController?.pushViewController(newVC!, animated: true)
            
            
        }
        else if arrayOfCellData[indexPath.row].cell == 2{
            let meal = arrayOfCellData[indexPath.row].text
            let newVC = storyboard?.instantiateViewControllerWithIdentifier(String(meal))
            navigationController?.pushViewController(newVC!, animated: true)
            
            
        }
        else {
            let meal = arrayOfCellData[indexPath.row].text
            let newVC = storyboard?.instantiateViewControllerWithIdentifier(String(meal))
            navigationController?.pushViewController(newVC!, animated: true)
            
            
        }

    }
    
    
    
    
    
    
    


}

