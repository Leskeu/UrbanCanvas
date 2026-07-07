//
//  SwiftUIView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 01/07/2026.
//

import SwiftUI

struct ArtistListRowView: View {
    var artist : Artist
    var body: some View {
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
        }
   
#Preview {
    ArtistListRowView(artist: artists[0])
}
