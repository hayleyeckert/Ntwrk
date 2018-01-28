//
//  Ref.swift
//
//  Copyright (c) 2016 MizoApps. All rights reserved.
//


import UIKit
import Foundation
/**
extension String {
    func trunc(length: Int) -> String {
        if self.characters.count > length {
            return self.substringToIndex(self.startIndex.advancedBy(length))
        } else {
            return self
        }
    }
}

extension Int {
    func format(f: String) -> String {
        return String(format: "%\(f)d", self)
    }
}

extension Double {
    func format(f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}
**/

class DetailViewcontroller: UIViewController {
    
    @IBOutlet var detailImage: UIImageView!
    
    
    @IBOutlet var detailLabel: UILabel!
    
    @IBOutlet var RefLabel: UILabel!
    
    var RefImage = ""
    var RefName = ""
    var RefPos = ""
    
    
    
    @IBOutlet var C_ODBT: UITextField!
    @IBOutlet var C_IDWB: UITextField!
    @IBOutlet var IDWB: UITextField!
    @IBOutlet var ODBT: UITextField!
    var IDWBvalues: Double!
    var ODBTvalues: Double!
    @IBOutlet var TempSwitch: UISwitch!
    @IBOutlet var NewDegree: UILabel!
    @IBOutlet var NewDegree2: UILabel!
    
    @IBOutlet var SHOutput: UILabel!
    
    @IBOutlet weak var TempLabel: UILabel!
    
    
    
    //var segmentedControl: UISegmentedControl!
    //let items = ["Cesius", "Fahrenheit"]
    

    @IBAction func Clear(sender: AnyObject)
    {
        C_IDWB.text = ""
        C_ODBT.text = ""
        IDWB.text = ""
        ODBT.text = ""
        SHOutput.text = ""
        
    }

    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        
        detailImage.image = UIImage(named: RefImage)
        RefLabel.text = "Refrigerant: \(RefName)"
        
        
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    
}
