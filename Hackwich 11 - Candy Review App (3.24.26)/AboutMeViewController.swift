//
//  AboutMeViewController.swift
//  Hackwich 11 - Candy Review App (3.24.26)
//
//  Created by Jillian Shirai on 4/3/26.
//

import UIKit

class AboutMeViewController: UIViewController {

    
    @IBOutlet weak var profileImage: UIImageView!
    
    
    @IBOutlet weak var aboutMeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileImage.image = UIImage(named: "Profile Pic")
        
        aboutMeLabel.text = "Jillian Shirai is a Creative Media student at UHWO. She has eaten a lot of candy in her life and as such can reccomend the best ones. (Profile image made with Picrew via @ Maddel_Art)."
        
        
    }
    

   

}
