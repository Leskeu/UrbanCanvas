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
        List {
            Text("Liste des Street Arts")
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .listRowSeparator(.hidden)
                .padding(.top)
            ForEach(artists) { artist in
                NavigationLink {
                    DetailListView(artist: artist)
                } label : {
                    ListRowView(artist: artist)
                }
            }
        } .listStyle(.plain)
    }
}
#Preview {
    ListView(artists:artists)
}
