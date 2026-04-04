//
//  HardCandyViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class HardCandyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var HCTableView: UITableView!
    
    var CatagoryThreeImagesData = [String]()
    
    var hardcandyArray = ["Nerds ⭐️⭐️⭐️", "Skittles ⭐️⭐️", "Smarties ⭐️⭐️⭐️⭐️", "Sweet Tarts ⭐️⭐️⭐️⭐️⭐️"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hardcandyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = hardcandyArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "HCProperty List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        CatagoryThreeImagesData = dict!.object(forKey: "CatagoryThreeImages") as! [String]
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "HCSegue"
        {
            let s1 = segue.destination as! HardCandyDetailViewController
            let imageIndex = HCTableView.indexPathForSelectedRow?.row
            s1.imagePass = CatagoryThreeImagesData[imageIndex!]
            
        }
        
        
    }
}
