//
//  CitiesViewController.swift
//  Week4TableView
//
//  Created by Lotte van der Molen on 20/11/15.
//  Copyright © 2015 Lotte van der Molen. All rights reserved.
//

import Foundation
import UIKit

class CitiesViewController: UIViewController {
    
    // Make a dictionary with key-value pairs.
    var dictionaryCity : [String : String] = ["Noord-Holland": "Haarlem", "Zuid-Holland": "Den Haag", "Flevoland": "Lelystad", "Utrecht": "Utrecht", "Groningen" : "Groningen", "Friesland": "Leeuwarden", "Zeeland" : "Middelburg", "Gelderland": "Arnhem", "Limburg" : "Maastricht", "Drenthe" : "Assen", "Overijssel" : "Zwolle", "Noord-Brabant" : "Den Bosch"]
    
    // The city of the province that the user clicked on.
    var selectedCity: String?
    
    // Textlabel made for showing the cities.
    @IBOutlet weak var CityTextLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Display the selected city.
        CityTextLabel.text = dictionaryCity[selectedCity!]
    }
}
