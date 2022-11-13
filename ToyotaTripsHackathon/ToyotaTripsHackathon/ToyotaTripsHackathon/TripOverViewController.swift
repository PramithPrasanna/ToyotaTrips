//
//  TripOverViewController.swift
//  ToyotaTripsHackathon
//
//  Created by Pramith Prasanna on 11/13/22.
//

import UIKit
import MapKit
import CoreLocation

class TripOverViewController: UIViewController {
    
    @IBOutlet private var viewMapBob: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let coordinateOne = CLLocationCoordinate2D(latitude:  32.7555, longitude: -97.3308)
        let coordinateTwo = CLLocationCoordinate2D(latitude: 33.037, longitude: -96.6817)
        self.getDirections(loc1: coordinateOne, loc2: coordinateTwo)
    }
    
    func getDirections(loc1: CLLocationCoordinate2D, loc2: CLLocationCoordinate2D) {
        let source = MKMapItem(placemark: MKPlacemark(coordinate: loc1))
        source.name = "Your Location"
        let destination = MKMapItem(placemark: MKPlacemark(coordinate: loc2))
        destination.name = "Destination"
        MKMapItem.openMaps(with: [source, destination], launchOptions: [MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
