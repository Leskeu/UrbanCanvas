//
//  ListView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct ListView: View {
    @State private var selectedFilter: ArtType = .tous
    @State private var selectedView = 0
    var filteredArtists: [Artist] {
        
        if selectedFilter == .tous {
            return artists
        }
        
        return artists.filter {
            $0.artType == selectedFilter
        }
    }
    
    init() {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.orange
                UISegmentedControl.appearance().setTitleTextAttributes(
                    [.foregroundColor: UIColor.white],
                    for: .selected
                )
                UISegmentedControl.appearance().setTitleTextAttributes(
                    [.foregroundColor: UIColor.orange],
                    for: .normal
                )
            }
    
    var body: some View {
        NavigationStack {
            List(filteredArtists) { artist in
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
