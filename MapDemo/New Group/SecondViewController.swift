//
//  SecondViewController.swift
//  MapDemo
//
//  Created by SAT PAL on 24/01/20.
//  Copyright © 2020 SAT PAL. All rights reserved.
//

//Note:- Import Google maps , Conform protocol, set View class "GMSMapView", call delegate

import UIKit
import GoogleMaps
import CoreLocation

class SecondViewController: UIViewController, CLLocationManagerDelegate {

    //MARK:- Google Map View
    @IBOutlet weak var map_view: GMSMapView!
    
    var marker : GMSMarker? = GMSMarker()
    
    var locationManeger : CLLocationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        map_view.delegate = self
        
        //for current location, add info plist permission
        
        map_view.isMyLocationEnabled = true
        
        map_view.settings.myLocationButton = true
        
        map_view.mapType = .normal
        
        map_view.isTrafficEnabled = true
        
        map_view.isBuildingsEnabled = true
        
        
        
        locationManeger.delegate = self
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        setMarker()
        
        getData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        map_view = nil
    }
    
    func setMarker() {
        
        //set marker
        
        let postion = CLLocationCoordinate2D(latitude: 30.12, longitude: 70.50)
        
        marker?.position = postion
            
        marker?.map = map_view
        
        
        //set camera position
        
        let camera = GMSCameraPosition(target: postion, zoom: 6)
        
        map_view.camera = camera
        
        
        //set title
        
        marker?.title = "Pakistan"
        
        
        
        // marker color
        
        marker?.icon = GMSMarker.markerImage(with: .darkGray)
        
        //change marker  image
        
        marker?.icon = UIImage(named: "car")
        
        
        //make marker transparent
       // marker?.opacity = 1.0
      
        
        // rotate marker with rotation of map, default direction of marker is north
        marker?.isFlat = true
        
        marker?.groundAnchor = CGPoint(x: 0.5, y: 0.5)
        
        marker?.rotation = 0.0
        
        
        // if you want new properties or the content of the info window to be immediately displayed
        marker?.tracksInfoWindowChanges = true
        
        marker?.infoWindowAnchor = CGPoint(x: 0.5, y: 0.5)
        
    }
    
    func removeMarker() {
        
        map_view.clear()
    }
    
    func getData() {
        
        let url = URL(string: "https://api.jaaikom.com:5004/DemoLogin")!
        
        let param = ["user_email": "raaz123@mailinator.com",
                            "password": "123456",] as [String : Any]
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = "Post"
        
        
     //   _ = URLSession.shared.dataTask(with: <#T##URLRequest#>)
        
        
        
        _ = URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            
            print(data.debugDescription)
            
            if let jsonString = String(data: data!, encoding: .utf8) {
               print(jsonString)
            }
            
            print(response)
            
            print(error)
        }.resume()
        
    }
  
}
//MARK:- Map view delegate

extension SecondViewController : GMSMapViewDelegate {
    
      func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
          
          print("run before map move")
      }
      
      func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
         // print("change camera position, it is called repeatedlly")
      }
      
      func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
          
          print("called after animation done or gesture complete")
      }
      
      func didTapMyLocationButton(for mapView: GMSMapView) -> Bool {
          //set false if you want enable location button tap
          
          print("location button tapped")
          return false
      }
      
      func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
          print("tapped at location \(coordinate)")
      }
      
      func mapView(_ mapView: GMSMapView, didLongPressAt coordinate: CLLocationCoordinate2D) {
          
          print("long press at location \(coordinate)")
      }
      
      func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
          
          print("marker tapped")
          
          //set false if you want title at marker tap
          return false
      }
      
      func mapView(_ mapView: GMSMapView, didLongPressInfoWindowOf marker: GMSMarker) {
          
          print("long press marker info window")
      }
      
      func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
          
          print("tap on title")
      }
    
      func mapView(_ mapView: GMSMapView, didCloseInfoWindowOf marker: GMSMarker) {
          
          print("title window closed")
      }
      
      func mapView(_ mapView: GMSMapView, didBeginDragging marker: GMSMarker) {
          
          print("dragging start")
      }
      
      func mapView(_ mapView: GMSMapView, didEndDragging marker: GMSMarker) {
          print("end dragging")
      }
      
      func mapView(_ mapView: GMSMapView, didDrag marker: GMSMarker) {
          print("marker dragged")
      }
      
      func mapView(_ mapView: GMSMapView, didTapMyLocation location: CLLocationCoordinate2D) {
          
          print("my location button dot tapped \(location)")
      }
    
}
