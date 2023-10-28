//
//  MapView.swift
//  Landmarks
//
//  Created by Leslie Lu on 10/13/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
       
       @State private var region: MKCoordinateRegion
       
       init(coordinate: CLLocationCoordinate2D) {
           self.coordinate = coordinate
           _region = State(initialValue: MKCoordinateRegion(
               center: coordinate,
               span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
           ))
       }
       
       var body: some View {
           Map(coordinateRegion: $region)
       }
   }

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
