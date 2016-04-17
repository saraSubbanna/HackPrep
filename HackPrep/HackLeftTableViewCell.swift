//
//  TableViewCell.swift
//  CodeCollab
//
//  Created by Sara Subbanna on 4/16/16.
//  Copyright (c) 2016 Avinash Jain. All rights reserved.
//

import UIKit

class HackLeftTableViewCell: UITableViewCell {
    
    
    var redBall: UIImage = (UIImage(named: "Red Ball") as UIImage?)!
    var blueBall: UIImage = (UIImage(named: "Blue Ball") as UIImage?)!
    var greenBall: UIImage = (UIImage(named: "Green Ball") as UIImage?)!
    var purpleBall: UIImage = (UIImage(named: "Purple Ball") as UIImage?)!
    var orangeBall: UIImage = (UIImage(named: "Orange Ball") as UIImage?)!
    
    var title: String!
    var date: String!
    var address: String!
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellName: UILabel!
    @IBOutlet weak var cellAddress: UILabel!
    @IBOutlet weak var cellDate: UILabel!
    
    @IBOutlet weak var rightCellAddress: UILabel!
    @IBOutlet weak var rightCellDate: UILabel!
    @IBOutlet weak var rightCellName: UILabel!
    @IBOutlet weak var rightCellImage: UIImageView!
    
    func loadItems (name: String, address: String, date: String, name2: String, address2: String, date2: String) {
        
        var setter = Int(arc4random_uniform(5))
        if setter == 0 {
            cellImage.image = blueBall
        }
        if setter == 1 {
            cellImage.image = redBall
        }
        if setter == 2 {
            cellImage.image = greenBall
        }
        if setter == 3 {
            cellImage.image = orangeBall
        }
        if setter == 4 {
            cellImage.image = purpleBall
        }
        setter = Int(arc4random_uniform(5))
        if setter == 0 {
            rightCellImage.image = blueBall
        }
        if setter == 1 {
            rightCellImage.image = redBall
        }
        if setter == 2 {
            rightCellImage.image = greenBall
        }
        if setter == 3 {
            rightCellImage.image = orangeBall
        }
        if setter == 4 {
            rightCellImage.image = purpleBall
        }
        
        cellName.text = name
        cellAddress.text = address
        cellDate.text = date
        
        rightCellAddress.text = address2
        rightCellDate.text = date2
        rightCellName.text = name2
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
