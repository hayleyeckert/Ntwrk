//
//  TableViewController2.swift
//  SuperCool_V.2
//
//  Created by Michayal Mathew on 7/14/16.
//  Copyright © 2016 David. All rights reserved.
//
import UIKit

class TableViewController2: UITableViewController {
    
    var SenderName = ""
    var RefArray:[Ref] = [Ref]()
    var RefData = ["Mickey","Hayley","Billy","Cyrus","ElonMusk","MichaelScott","KobeBryant","EKingGill","JeffZhao"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let Mickey = Ref(imageName: "R22.jpg", description: "R22", position:  "CEO")
        let Hayley = Ref(imageName: "R410A.jpg", description: "R410A", position: "CEO")
        let Billy = Ref(imageName: "R134A.jpg", description: "R134a", position: "CEO")
        let Cyrus = Ref(imageName: "R11.jpg", description: "R11", position: "CEO")
        let ElonMusk = Ref(imageName: "R12.jpg", description: "R12", position: "CEO")
        let MichaelScott = Ref(imageName: "R13.jpg", description: "R13", position: "CEO")
        let KobeBryant = Ref(imageName: "R23.jpg", description: "R23", position: "CEO")
        let EKingGill = Ref(imageName: "R123.jpg", description: "R123", position: "CEO")
        let JeffZhao = Ref(imageName: "R124.jpg", description: "R124", position: "CEO")

        RefArray.append(Mickey)
        RefArray.append(Hayley)
        RefArray.append(Billy)
        RefArray.append(Cyrus)
        RefArray.append(ElonMusk)
        RefArray.append(MichaelScott)
        RefArray.append(KobeBryant)
        RefArray.append(EKingGill)
        RefArray.append(JeffZhao)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return RefArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2", for: indexPath as IndexPath) as! myCell2
        
        let RefItem = RefArray[indexPath.row]
        
        cell2.myImageView.image = UIImage(named: RefItem.imageName)
        cell2.NameLabel.text = RefItem.description
        cell2.PosLabel.text = RefItem.description
        
        return cell2
        
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let RefSelected = RefArray[indexPath.row]
        
        let DetailVC:DetailViewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewcontroller
        
        
        DetailVC.RefImage = RefSelected.imageName
        DetailVC.RefName = RefSelected.description
        //DetailVC.RefPos = RefSelected.position
        self.present(DetailVC, animated: true, completion: nil)
    }
    
    
    
}
