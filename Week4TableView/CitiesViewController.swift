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
    
    @IBOutlet weak var CityView: UITextView!
    
    var FirstString = String()
    
    override func viewDidLoad() {
        CityView.text = FirstString
       
    }
    
    
}
