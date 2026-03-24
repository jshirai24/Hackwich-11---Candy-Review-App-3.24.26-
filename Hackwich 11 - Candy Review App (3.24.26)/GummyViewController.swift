//
//  GummyViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 3/24/26.
//

import UIKit

class GummyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    var gummyArray = ["Sour Patch Kids", "Albanese Gummy Bears", "Trolli Sour Crawlers", "Wild Berry Lifesavers"]
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gummyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = gummyArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
        //Fix after watching video playback
        //func tableView(_tableView:UITableView, didSelectRowAt indexPath: IndexPath){
        // tableView.deselectRow(at: indexPath, animated: true)
    }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    }
    

    


