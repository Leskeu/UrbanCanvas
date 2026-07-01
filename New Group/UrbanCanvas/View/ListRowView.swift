//
//  SwiftUIView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 01/07/2026.
//

import SwiftUI

struct ListRowView: View {
    var artists : [Artist]
    var body: some View {
        NavigationStack {
            List(artists) { artist in
                HStack {
                    Image(artist.image)
                        .resizable()
                        .cornerRadius(400)
                        .frame(width: 60, height: 60)
                    VStack(alignment: .leading) {
                        Text(artist.name)
                        HStack {
                            Image(systemName: "mappin.circle.fill")
                                .foregroundStyle(.secondText)
                            Text(artist.city)
                        }
                    }
                }
            }
            .navigationTitle("Liste des Street Arts")
        }
    }
}

#Preview {
    ListRowView(artists: artists)
}
