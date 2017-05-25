//
//  ViewController.swift
//  10 Lesson, Part 01
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var indexPath = IndexPath()
    var arrayOfTrips = [Trip]()
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func deleteButton(_ sender: Any) {
        arrayOfTrips.remove(at: self.indexPath.row)
        tableView.reloadData()
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "mySegue1", sender: arrayOfTrips[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue1" {
         let myController = segue.destination as! secondViewController
            myController.trip = sender as! Trip
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .insert {
            
            arrayOfTrips.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contentCell", for: indexPath) as! myTableViewCell
        
        cell.nameLabel.text = arrayOfTrips[indexPath.row].name
        cell.daysLabel.text = "\(arrayOfTrips[indexPath.row].days)"
        cell.priceLabel.text = "\(arrayOfTrips[indexPath.row].pricePerDay)"
        
        print(indexPath)
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfTrips.count
    }
    
    
    
    @IBAction func addButtonPress(_ sender: Any) {
        performSegue(withIdentifier: "mySegue1", sender: nil    )
    }
    
    
    override func viewDidLoad() {
        arrayOfTrips.append(Trip(name: "Thailand", days: 9, pricePerDay: 234))
        arrayOfTrips.append(Trip(name: "Bhutan", days: 9, pricePerDay: 234))
        arrayOfTrips.append(Trip(name: "Nepal", days: 9, pricePerDay: 234))
        arrayOfTrips.append(Trip(name: "WoShungah", days: 9, pricePerDay: 234))
        arrayOfTrips.append(Trip(name: "Seoul", days: 9, pricePerDay: 234))
    
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

