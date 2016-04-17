//
//  ViewController.swift
//  Test
//
//  Created by Sara Subbanna on 4/16/16.
//  Copyright (c) 2016 Srividhya Gopalan. All rights reserved.
//

import UIKit
import MapKit

class HackathonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var hackathons: [Hackathon] = []
    
    @IBOutlet weak var leftTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftTable.delegate = self
        leftTable.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
        getHackathons()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getHackathons() {
            hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        hackathons.append(Hackathon(name: "Test 1", image: (UIImage(named: "Purple Ball") as UIImage?)!, date: NSDate(), blurb: "blurb", location: CLLocationCoordinate2D(), teamSize: 4, prizes: [], members: [], address: "My house"))
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 3
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //self.selectedCell = indexPath.row
        //self.performSegueWithIdentifier("To Deep Look", sender: self)
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Left Cells", forIndexPath: indexPath) as! HackLeftTableViewCell
        var row = indexPath.row
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd MMMM yyyy"
        var dateString = dateFormatter.stringFromDate(hackathons[row].date)
        var dateString2 = dateFormatter.stringFromDate(hackathons[row+1].date)
        cell.loadItems(hackathons[row].name, address: hackathons[row].address, date: dateString, name2: hackathons[row+1].name, address2: hackathons[row+1].address, date2: dateString2)
        // Configure the cell...
        
        return cell
    }
    
    
    
}

