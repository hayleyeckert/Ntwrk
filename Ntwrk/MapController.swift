//
//  MapController.swift
//  Ntwrk
//
//  Created by Hayley Eckert on 1/27/18.
//  Copyright © 2018 Hayley Eckert. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        let initiallocation = CLLocation(latitude: 30.6119, longitude: -96.3417)
        centerMapONLocation(location: initiallocation)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let regionRadius : CLLocationDistance = 1000
    func centerMapONLocation(location: CLLocation){
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
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
