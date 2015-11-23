//
//  ViewController.swift
//  Week4TableView
//
//  Created by Lotte van der Molen on 19/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    // Create variables.
    var ProvinciesArray = [String]()
    var CitiesProvinciesArray = [String]()
    var CityTextLabel = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create an array after loading the view with all the Dutch provinces.
        ProvinciesArray = ["Noord-Holland", "Zuid-Holland", "Flevoland", "Utrecht", "Groningen", "Friesland", "Zeeland", "Gelderland", "Limburg", "Drenthe", "Overijssel", "Noord-Brabant"]
        
        // Create an array after loading the view with all the main cities of the provinces.
        CitiesProvinciesArray = ["Haarlem", "Den Haag", "Lelystad", "Utrecht", "Groningen", "Leeuwarden", "Middelburg", "Arnhem", "Maastricht", "Assen", "Zwolle", "Den Bosch"]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Return the amount of rows needed to display all provinces.
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProvinciesArray.count
    }
    
    // Display the provinces in a table.
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = ProvinciesArray[indexPath.row]
        
        return cell
        
    }
    
    // Remember the city that has been clicked on for next scene.
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let selectedCity = segue.destinationViewController as!CitiesViewController
        selectedCity.selectedCity = CityTextLabel.text
        
        // let resultsViewController = segue.destinationViewController as! ResultsViewController
        // resultsViewController.searchKeyword = customerKeyword.text
    }

}

