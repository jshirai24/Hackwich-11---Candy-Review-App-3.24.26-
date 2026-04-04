//
//  HardCandyDetailViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class HardCandyDetailViewController: UIViewController {

    
    @IBOutlet weak var HCImageView: UIImageView!
    
    var imagePass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if let imageName = imagePass {
            HCImageView.image = UIImage(named: imageName)
        }
        
    }
    

   
}
