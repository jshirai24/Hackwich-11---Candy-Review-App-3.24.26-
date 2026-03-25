//
//  GummyViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 3/24/26.
//

import UIKit

class GummyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!

    var catagoryOneImagesData = [String]()
    
    var gummyArray = ["Sour Patch Kids", "Albanese Gummy Bears", "Trolli Sour Crawlers", "Wild Berry Lifesavers"]
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = gummyArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        catagoryOneImagesData = dict!.object(forKey: "CatagoryOneImagesData") as! [String]
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "gummySegue"
        {
            let s1 = segue.destination as! GummyDetailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = catagoryOneImagesData[imageIndex!]
            
        }
    }
    
    
    
    }
    

    


