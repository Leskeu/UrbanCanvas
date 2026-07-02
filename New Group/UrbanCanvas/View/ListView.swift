//
//  ListView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct ListView: View {
    @State private var selectedFilter: ArtType = .tous
    var filteredArtists: [Artist] {
        
        if selectedFilter == .tous {
            return artists
        }
        
        return artists.filter {
            $0.artType == selectedFilter
        }
    }
    
    var body: some View {
        ZStack {
            NavigationStack {
                List(filteredArtists) { artist in
                    NavigationLink {
                        DetailListView(artist: artist)
                    } label : {
                        ListRowView(artist: artist)
                    }
                }
                .navigationTitle("Liste des Street Arts")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Menu {
                            VStack {
                                Text("Liste des filtres")
                                Text("Choisissez une type d'art")
                                ForEach(ArtType.allCases) { type in
                                    Button {
                                        selectedFilter = type
                                    } label: {
                                        if selectedFilter == type {
                                            Label(type.rawValue, systemImage: "checkmark")
                                        } else {
                                            Text(type.rawValue)
                                        }
                                    }
                                }
                            }
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease.circle")
                                .font(.title2)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ListView()
}
