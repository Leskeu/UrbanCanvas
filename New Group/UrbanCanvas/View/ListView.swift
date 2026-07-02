//
//  ListView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationStack {
            List(artists) { artist in
                NavigationLink {
                    DetailListView(artist: artist)
                } label : {
                    ListRowView(artist: artist)
                }
            }
            .navigationTitle("Liste des Street Arts")
        }
    }
}

#Preview {
    ListView()
}
