//
//  MyTVC.swift
//  ToDoList
//
//  Created by Mansi Chikarmane on 5/4/21.
//

import UIKit

class MyTVC: UITableViewController {

    var toDoItems = ["Alaska",
                     "Arizona",
                     "California",
                     "Florida",
                     "Georgia",
                     "Hawaii",
                     "Idaho",
                     "Illinois",
                     "Kentucky",
                     "Maine",
                     "Maryland",
                     "Massachusetts",
                     "Michigan",
                     "Nevada",
                     "New Jersey",
                     "New York",
                     "Oklahoma",
                     "Oregon",
                     "Pennsylvania",
                     "Rhode Island",
                     "Washington",
                     "Wyoming",
                     "Montana",
                     "Ohio",
                     "Vermont",
                     "New Mexico"
    ]
    var toDoImages = ["alaska",
                      "arizona",
                      "california",
                      "florida",
                      "georgia",
                      "hawaii",
                      "idaho",
                      "illinois",
                      "kentucky",
                      "maine",
                      "maryland",
                      "massachusetts",
                      "michigan",
                      "nevada",
                      "new_jersey",
                      "new_york",
                      "oklahoma",
                      "oregon",
                      "pennsylvania",
                      "rhode_island",
                      "washington",
                      "wyoming",
                      "montana",
                      "ohio",
                      "vermont",
                      "new_mexico"
     ]
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoItems.count
    }

    // controls what happens to the cell per row on the UI
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "toDoCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = toDoItems[indexPath.row]
        cell.imageView?.image = UIImage(named: toDoImages[indexPath.row])
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
