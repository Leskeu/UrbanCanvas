//
//  HomeView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedView = 0
    @State private var selectedFilter: ArtType = .tous
    @State private var isPopoverPresented = false
    @State private var showPopover = false
    
    var filteredArtists: [Artist] {
        
        if selectedFilter == .tous {
            return artists
        }
        return artists.filter {
            $0.artType == selectedFilter
        }
    }
    var body: some View {
        NavigationStack {
            ZStack {
                if selectedView == 0 {
                    ListView(artists: filteredArtists)
                } else {
                    MapView(artists: filteredArtists)
                }
            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                        Picker("", selection: $selectedView) {
                            Text("Liste").tag(0)
                            Text("Carte").tag(1)
                        }
                        .pickerStyle(.segmented)
                }
                ToolbarItem(placement: .automatic) {
                    Button {
                        showPopover.toggle()
                    }label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .foregroundStyle(.mainText)
                    } .popover(isPresented: $showPopover) {
                        VStack {
                            Text("Listes des filtres")
                                .bold()
                                .font(.title)
                            Text("Choisissez un type d'art")
                            ForEach(ArtType.allCases) { type in
                                Button{
                                    selectedFilter = type
                                }label: {
                                    if selectedFilter == type {
                                        Text(type.rawValue)
                                            .foregroundStyle(.mainOrange)
                                            .padding(.horizontal, 60)
                                            .padding(.vertical, 20)
                                            .background(.thinMaterial)
                                            .cornerRadius(40)
                                            .font(.system(size:17))
                                    } else {
                                        Text(type.rawValue)
                                            .foregroundStyle(.mainText)
                                            .padding(.horizontal, 60)
                                            .padding(.vertical, 20)
                                            .background(.thinMaterial)
                                            .cornerRadius(40)
                                            .font(.title2)
                                    }
                                }
                            }
                        }.frame(width: 300, height: 500)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        .presentationCompactAdaptation(.popover)
                    }
                }
            }
        }
    }
}
#Preview {
    HomeView()
}
