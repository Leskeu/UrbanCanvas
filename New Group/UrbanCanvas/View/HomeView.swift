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
    var body: some View {
        NavigationStack {
            ZStack {
                if selectedView == 0 {
                    ListView()
                } else {
                    MapView(artist: artists[0])
                }
            }
            .overlay(alignment: .top) {
                Picker("", selection: $selectedView) {
                    Text("Liste").tag(0)
                    Text("Carte").tag(1)
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .padding(.top, 8)
            }
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
        //        NavigationStack {
        //            VStack {
        //
        //                Picker("", selection: $selectedView) {
        //                    Text("Liste").tag(0)
        //                    Text("Carte").tag(1)
        //                }
        //                .pickerStyle(.segmented)
        //                .padding(.horizontal)
        //
        //                Group {
        //                    switch selectedView {
        //                    case 0:
        //                        ListView()
        //                    case 1:
        //                        MapView(artist: artists[0])
        //                    default:
        //                        EmptyView()
        //                    }
        //                }
        //            }
        //            .toolbar {
        //                ToolbarItem(placement: .topBarTrailing) {
        //                    // Ton bouton filtre si tu le veux pour les deux vues
        //                }
        //            }
        //        }
        //    }
        //}
    }
}
#Preview {
    HomeView()
}
