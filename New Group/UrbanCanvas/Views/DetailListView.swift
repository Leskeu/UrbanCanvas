//
//  DetailListView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 01/07/2026.
//

import SwiftUI
import MapKit

struct DetailListView: View {
    @State private var cameraPosition: MapCameraPosition = .automatic
    var artist: Artist
    var body: some View {
        ScrollView {
            Image(artist.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 250)
                .clipped()
            VStack(alignment: .leading) {
                Text(artist.name)
                    .foregroundStyle(.mainOrange)
                    .font(.title2)
                Text(artist.description)
                    .font(.footnote)
                HStack {
                    Text("Type :")
                        .bold()
                        .font(.footnote)
                    Text(artist.type)
                        .font(.footnote)
                } .padding(.top)
                HStack {
                    Text("Condition :")
                        .bold()
                        .font(.footnote)
                    Text(artist.condition)
                        .font(.footnote)
                }
                HStack {
                    Text("Date :")
                        .bold()
                        .font(.footnote)
                    Text(artist.date)
                        .font(.footnote)
                }
                HStack {
                    Text("Auteur :")
                        .bold()
                        .font(.footnote)
                    Text(artist.name)
                        .font(.footnote)
                }
                HStack(alignment: .top) {
                    Text("Localisation :")
                        .bold()
                        .font(.footnote) +
                    Text(artist.adress)
                        .font(.footnote)
                }
                Map(position: $cameraPosition) {
                    Annotation("",coordinate: artist.coordinate, anchor: .center) {
                        Image(artist.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(200)
                    }
                }
                    .onAppear {
                        let marseille = artist.coordinate
                        let marseilleSpan = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
                        let marseilleRegion = MKCoordinateRegion(center: marseille, span: marseilleSpan)
                        cameraPosition = .region(marseilleRegion)
                    } .frame(width : 358, height: 157)
                    .cornerRadius(26)
                    .padding(.vertical)
                    .colorScheme(.dark)
                
            } .padding(.horizontal, 24)
            
        } .ignoresSafeArea()
    }
}
#Preview {
    DetailListView(artist: artists[0])
}
