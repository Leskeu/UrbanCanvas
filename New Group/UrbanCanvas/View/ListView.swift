//
//  ListView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct ListView: View {
    let artists : [Artist]
    
    var body: some View {
            List(artists) { artist in
                NavigationLink {
                    DetailListView(artist: artist)
                } label : {
                    ListRowView(artist: artist)
                }
            } .navigationTitle("Liste des Street Arts")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
#Preview {
    ListView(artists:artists)
}
