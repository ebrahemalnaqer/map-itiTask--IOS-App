//
//  ViewController.swift
//  map
//
//  Created by Ebraheem Alnaqer on 24/08/2023.
//
// MainViewController.swift

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var longitudeTextField: UITextField!
    
    @IBOutlet weak var latitudeTextField: UITextField!
    
    @IBOutlet weak var infoButton: UIButton!
    
    
    
    @IBAction func showMapButtonTapped(_ sender: UIButton) {
           performSegue(withIdentifier: "showMapSegue", sender: nil)
       }

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if segue.identifier == "showMapSegue" {
               if let mapViewController = segue.destination as? MapVC {
                   if let title = titleTextField.text,
                      let longitudeStr = longitudeTextField.text, let longitude = Double(longitudeStr),
                      let latitudeStr = latitudeTextField.text, let latitude = Double(latitudeStr) {
                       mapViewController.markerTitle = title
                       mapViewController.longitude = longitude
                       mapViewController.latitude = latitude
                   }
               }
           }
       }
}
