//
//  ChocoDetailViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class ChocoDetailViewController: UIViewController {

    
    @IBOutlet weak var chocoImageView: UIImageView!
    
    var imagePass: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageName = imagePass {
            chocoImageView.image = UIImage(named: imageName)
        }
    }
    

   

}
