//
//  MapCollectionViewCell.swift
//  Euphoria
//
//  Created by John Torres  on 10/16/16.
//  Copyright © 2016 John Torres . All rights reserved.
//

import UIKit
import GoogleMaps

class MapCollectionViewCell: UICollectionViewCell {
    static let  kReuseIdentifier = "MapCollectionViewCell"
  
  @IBOutlet weak var motelsMaps: GMSMapView!
  func startMap () {
    let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    mapView.isMyLocationEnabled = true
    
    // Creates a marker in the center of the map.
    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
    marker.title = "Sydney"
    marker.snippet = "Australia"
    marker.map = mapView
  
  }
}
