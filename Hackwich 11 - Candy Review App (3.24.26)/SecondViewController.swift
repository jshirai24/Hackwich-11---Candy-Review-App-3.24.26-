//
//  SecondViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var featuredcandyImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featuredcandyImage.image = UIImage(named: "Albanese Gummy Bears")
        
        
    }
    
    
   

}
