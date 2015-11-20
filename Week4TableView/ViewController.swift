//
//  ViewController.swift
//  Week4TableView
//
//  Created by Lotte van der Molen on 19/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    // Create a variable that is an array.
    var ProvinciesArray = [provincies]()
    var CitiesProvinciesArray = [String]()
    
    var CityArray = [CityList]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create an array after loading the view with all the Dutch provinces.
        self.ProvinciesArray = [provincies(name: "Noord-Holland"), provincies(name: "Zuid-Holland"), provincies(name: "Flevoland"), provincies(name: "Utrecht"), provincies(name: "Groningen"), provincies(name: "Friesland"), provincies(name: "Zeeland"), provincies(name: "Gelderland"), provincies(name: "Limburg"), provincies(name: "Drenthe"), provincies(name: "Overijssel"), provincies(name: "Noord-Brabant")]
        
        // Create an array after loading the view with all the Dutch main cities of those provinces.
        CityArray = [CityList(CityListArray: ["Haarlem", "Den Haag", "Lelystad", "Utrecht", "Groningen", "Leeuwarden", "Middelburg", "Arnhem", "Maastricht", "Assen", "Zwolle", "Den Bosch"])]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Make as much rows as there are provinces.
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.ProvinciesArray.count
    }
    
    // Reuse cell's memory if it's not shown in the view.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var provincie : provincies
        
        provincie = ProvinciesArray[indexPath.row]
        
        cell.textLabel?.text = provincie.name
        
        return cell
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destinationViewController = segue.destinationViewController as! CitiesViewController
        destinationViewController.FirstString = "Amsterdam"
    }

}

