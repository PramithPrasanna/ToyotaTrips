//
//  TripPlannerViewController.swift
//  ToyotaTripsHackathon
//
//  Created by Pramith Prasanna on 11/12/22.
//

import UIKit
import MapKit
import CoreLocation

class TripPlannerViewController: UIViewController {
    
    @IBOutlet private var mapView: MKMapView!
    
    @IBOutlet weak var startField: UITextField!
    
    @IBOutlet weak var endField: UITextField!
    
    lazy var geocoder = CLGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        let initialLocation = CLLocation(latitude: 32.99, longitude: -96.75)
//        mapView.centerToLocation(initialLocation)
        
//        let sourceAddress = startField?.text
//        let destinationAddress = endField?.text
//        var sourceCoordinate = CLLocationCoordinate2D(latitude: 32.9857, longitude: -96.7502)
//        var endCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
//        geocoder.geocodeAddressString(sourceAddress!) { (placemarks, error) in
//            if let error = error {
//                print("Error found")
//            } else {
//                var location: CLLocation?
//
//                if let placemarks = placemarks, placemarks.count > 0 {
//                    location = placemarks.first?.location
//                }
//
//                if let location = location {
//                    sourceCoordinate = location.coordinate
//                }
//            }
//        }
//
//        geocoder.geocodeAddressString(destinationAddress!) { (placemarks, error) in
//            if let error = error {
//                print("Error found")
//            } else {
//                var location: CLLocation?
//
//                if let placemarks = placemarks, placemarks.count > 0 {
//                    location = placemarks.first?.location
//                }
//
//                if let location = location {
//                    endCoordinate = location.coordinate
//                }
//            }
//        }
        
        let coordinateOne = CLLocationCoordinate2D(latitude:  32.7555, longitude: -97.3308)
        let coordinateTwo = CLLocationCoordinate2D(latitude: 33.037, longitude: -96.6817)

//        createPath(sourceLocation: sourceCoordinate, destinationLocation: endCoordinate)
//
//        self.mapView.delegate = self
        
        self.getDirections(loc1: coordinateOne, loc2: coordinateTwo)
    }
    
//    func createPath(sourceLocation: CLLocationCoordinate2D, destinationLocation: CLLocationCoordinate2D) {
//        let sourcePlaceMark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil)
//        let destinationPlaceMark = MKPlacemark(coordinate: destinationLocation, addressDictionary: nil)
//
//        let sourceMapItem = MKMapItem(placemark: sourcePlaceMark)
//        let destinationMapItem = MKMapItem(placemark: destinationPlaceMark)
//
//        let sourceAnnotation = MKPointAnnotation()
//        sourceAnnotation.title = "Your Location"
//        if let location = sourcePlaceMark.location {
//            sourceAnnotation.coordinate = location.coordinate
//        }
//
//        let destinationAnnotation = MKPointAnnotation()
//        destinationAnnotation.title = "Destination Location"
//        if let location = destinationPlaceMark.location {
//            destinationAnnotation.coordinate = location.coordinate
//        }
//
//        self.mapView.showAnnotations([sourceAnnotation, destinationAnnotation], animated: true)
//
//        let directionRequest = MKDirections.Request()
//        directionRequest.source = sourceMapItem
//        directionRequest.destination = destinationMapItem
//        directionRequest.transportType = .automobile
//
//        let direction = MKDirections(request: directionRequest)
//
//        direction.calculate { (response, error) in
//            guard let response = response else {
//                if let error = error {
//                    print("Error found : \(error.localizedDescription)")
//                }
//                return
//            }
//
//            let route = response.routes[0]
//            self.mapView.addOverlay(route.polyline, level: MKOverlayLevel.aboveRoads)
//
//            let rect = route.polyline.boundingMapRect
//
//            self.mapView.setRegion(MKCoordinateRegion(rect), animated: true)
//        }
//
//    }
    
    
    
    
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

extension TripPlannerViewController : MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, renderFor overlay: MKOverlay) -> MKOverlayRenderer {
        let render = MKGradientPolylineRenderer(overlay: overlay)
        render.lineWidth = 1000
        render.strokeColor = .systemGreen
        
        return render
    }
}





//private extension MKMapView {
//    func centerToLocation(
//        _ location: CLLocation,
//        regionRadius: CLLocationDistance = 5000
//    ) {
//        let coordinateRegion = MKCoordinateRegion(
//            center: location.coordinate,
//            latitudinalMeters: regionRadius,
//            longitudinalMeters: regionRadius)
//        setRegion(coordinateRegion, animated: true)
//    }
//}
