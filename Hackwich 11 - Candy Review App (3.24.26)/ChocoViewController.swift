//
//  ChocoViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class ChocoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var chocoTableView: UITableView!
    
    var CatagoryTwoImagesData = [String]()
    
    var chocoArray = ["Dove Chocolate ⭐️⭐️⭐️⭐️", "Ghirardelli ⭐️⭐️⭐️⭐️⭐️", "M&Ms ⭐️⭐️⭐️", "Crunch Bar ⭐️⭐️⭐️⭐️"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocoArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = chocoArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "ChocoProperty List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        CatagoryTwoImagesData = dict!.object(forKey: "CatagoryTwoImages") as! [String]
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "chocoSegue"
        {
            let s1 = segue.destination as! ChocoDetailViewController
            let imageIndex = chocoTableView.indexPathForSelectedRow?.row
            s1.imagePass = CatagoryTwoImagesData[imageIndex!]
            
            
            
        }
        
        
    }
    
    
    
}

