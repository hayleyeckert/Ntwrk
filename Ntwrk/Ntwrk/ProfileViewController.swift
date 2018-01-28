//
//  ProfileViewController.swift
//  Example
//
//  Created by Bill Newman on 1/27/18.
//  Copyright © 2018 Carma. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var ProfPic: UIImageView!
    @IBOutlet weak var NameLabel: UITextView!
    @IBOutlet weak var LocLabel: UITextView!
    @IBOutlet weak var PosLabel: UITextView!
    
    var NameString = String()
    var LocString = String()
    var PosString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = NameString
        LocLabel.text = LocString
        PosLabel.text = PosString


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
