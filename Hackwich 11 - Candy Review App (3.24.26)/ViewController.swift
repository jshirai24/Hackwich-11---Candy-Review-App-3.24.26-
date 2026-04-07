//
//  ViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 3/24/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var homeImageView: UIImageView!
    
    
    @IBOutlet weak var learnmoreButton: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeImageView.image = UIImage(named:"Home Screen")
        
        learnmoreButton.setTitle("Learn More", for:.normal)
       
        titleLabel.text = "Featured Candy: Albanese Gummy Bears"
        
    }
    
    
    @IBAction func learnmoreButtonPressed(_ sender: Any) {
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?)
        {
            if segue.identifier == "FeaturedSegue"
            {
                _ = segue.destination as! SecondViewController
                
            }
            
            
        }
    }
    
}
