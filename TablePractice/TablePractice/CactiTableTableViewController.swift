//
//  CactiTableTableViewController.swift
//  TablePractice
//
//  Created by Eric Smith on 6/23/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

struct Cacti {
    var id : Int
    var title : String
    var text : String
    var image : String
}

class CactiTableTableViewController: UITableViewController {
    
    var allCacti = [
        Cacti(id: 1,
              title: "Prickly Pear",
              text: "Opuntia, commonly called prickly pear, is a genus in the cactus family, Cactaceae.",
              image: "prickly-pear"),
        Cacti(id: 2,
              title: "Hedgehog",
              text: "Echinopsis is a large genus of cacti native to South America, sometimes known as hedgehog cactus, sea-urchin cactus or Easter lily cactus.",
              image: "hedgehog"),
        Cacti(id: 3,
              title: "Rebutia",
              text: "Rebutia is a genus in the family Cactaceae, native to Bolivia and Argentina. They are generally small, colorful cacti, and globular in form.",
              image: "rebutia")
        ]
    //override func viewDidLoad() {
    //    super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
   // }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
       // return 3
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
       // return 5
        return allCacti.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        // Configure the cell...
        //cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
          cell.textLabel?.text = allCacti[indexPath.row].title
          cell.detailTextLabel?.text = allCacti[indexPath.row].text
          cell.imageView?.image = UIImage(named: allCacti[indexPath.row].image)
        
        return cell
    }
   // Add this function by typing tableTitleHeader
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       // return "Section \(section)"
        return "Cacti Types"
    }
    
}
