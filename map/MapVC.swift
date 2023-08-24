//
//  MapVC.swift
//  map
//
//  Created by Ebraheem Alnaqer on 24/08/2023.
//

// MapViewController.swift

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    var markerTitle: String = ""
    var longitude: Double = 0.0
    var latitude: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = markerTitle
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        mapView.setRegion(region, animated: true)
    }
}
