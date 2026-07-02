//
//  MapView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var cameraPosition: MapCameraPosition = .automatic
    var artist: Artist
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(artists) { artist in
                Annotation("",coordinate: artist.coordinate, anchor: .center) {
                    Image(artist.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .cornerRadius(200)
                }
            }
        }
            .onAppear {
                let marseille = artist.coordinate
                let marseilleSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                let marseilleRegion = MKCoordinateRegion(center: marseille, span: marseilleSpan)
                cameraPosition = .region(marseilleRegion)
            }
            .padding(.vertical)
            .colorScheme(.dark)
            .ignoresSafeArea()
    }
}

#Preview {
    MapView(artist: artists[0])
}
