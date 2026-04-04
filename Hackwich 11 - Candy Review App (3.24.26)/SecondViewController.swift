//
//  SecondViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var featuredcandyImage: UIImageView!
    
    @IBOutlet weak var featuredLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        featuredcandyImage.image = UIImage(named: "Albanese Gummy Bears")
        featuredLabel.text = "Albanese Gummy Bears are the best gummy bears on the market. They are juicy and incredibly flavorful. Unlike other brands, Albanese Gummy Bears are chewy but not hard. Highly recommend these bears over all others."
        
    }
    
    
   

}
