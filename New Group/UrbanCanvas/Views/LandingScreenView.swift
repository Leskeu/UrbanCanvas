//
//  LandingScreenView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 06/07/2026.
//

import SwiftUI

struct LandingScreenView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Oeuvres", systemImage: "photo.artframe.circle")
                }
            GridView(detailArtist: detailartists[0])
                .tabItem {
                    Label("Auteurs", systemImage: "person.circle")
                }
        } .tint(.mainOrange)
    }
}

#Preview {
    LandingScreenView()
}
