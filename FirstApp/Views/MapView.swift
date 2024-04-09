//
//  MapView.swift
//  FirstApp
//
//  Created by Apple on 2024/04/09.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var pos: MapCameraPosition = 
        .region(
            .init(
                center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
                span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
        )
    
    var body: some View {
        Map(position: $pos)
    }
}

#Preview {
    MapView()
}
