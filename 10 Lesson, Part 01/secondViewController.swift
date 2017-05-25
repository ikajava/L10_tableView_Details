//
//  secondViewController.swift
//  10 Lesson, Part 01
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    var trip: Trip!
    @IBOutlet weak var detailsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        detailsLabel.text = "\(trip.calculatePrice())"
        
    }


}
