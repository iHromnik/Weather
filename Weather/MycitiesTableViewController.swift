//
//  MycitiesTableViewController.swift
//  Weather
//
//  Created by HappyRoman on 14/04/2022.
//

import UIKit

class MycitiesTableViewController: UITableViewController {

    var cities: [String] = []
    
    
    
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
        return cities.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? MyCitiesTableViewCell{
            cell.MyCitiesLable.text = cities[indexPath.row]
            return cell
        }
        return UITableViewCell()
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cities.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    @IBAction func unwindFromTableViewController(_ segue: UIStoryboardSegue) {
       
        guard let tableViewController = segue.source as? CityTableViewController,
              let indexPath = tableViewController.tableView.indexPathForSelectedRow else {return}
       
        
        switch indexPath.section {
    case 0:
        let city = tableViewController.europianCity[indexPath.row]
            if cities.contains(city) {return}
        cities.append(city)
        case 1:
            let city = tableViewController.asianCity[indexPath.row]
            if cities.contains(city) {return}
            cities.append(city)
        default:
            return
        }
        
//        if indexPath.section == 0 {
//            let city = tableViewController.europianCity[indexPath.row]
//           //        if cities.contains(city) {return}
//            //if cities.contains(city2) {return}
//            cities.append(city)
//           //        //cities.append(city2)
//        }  else {
//            let city = tableViewController.asianCity[indexPath.row]
//           //        if cities.contains(city) {return}
//            //if cities.contains(city2) {return}
//            cities.append(city)
//        }
//
        
        
//        let city = tableViewController.europianCity[indexPath.section]
//       // let city2 = tableViewController.asianCity[indexPath.row]
//        if cities.contains(city) {return}
//        //if cities.contains(city2) {return}
//        cities.append(city)
//        //cities.append(city2)
        
        
        tableView.reloadData()
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
