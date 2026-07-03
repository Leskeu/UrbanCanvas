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
    @State private var selectedArtist: Artist?
    var artists: [Artist]
    var body: some View {
        Map(position: $cameraPosition) {
            ForEach(artists) { artist in
                Annotation("",coordinate: artist.coordinate, anchor: .center) {
                        Button {
                            selectedArtist = artist
                        } label: {
                            Image(artist.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                                .cornerRadius(200)
                        }
                }
            }
        }
    .sheet(item: $selectedArtist) { artist in
            ArtistSheet(artist: artist)
                .presentationDetents([.fraction(0.50), .large])
                        .presentationDragIndicator(.visible)
                        .presentationBackground(.background)
            
                .onAppear {
                    let marseille = artist.coordinate
                    let marseilleSpan = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                    let marseilleRegion = MKCoordinateRegion(center: marseille, span: marseilleSpan)
                    cameraPosition = .region(marseilleRegion)
                }
        }
    }
}
#Preview {
    MapView(artists:artists)
}
