//
//  ArtistSheet.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 03/07/2026.
//

import SwiftUI

struct ArtistSheet: View {
    let artist: Artist
    var body: some View {
        VStack(alignment: .center) {
            Text(artist.name)
                .font(.title2)
                .bold()
            Image(artist.image)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 250)
                .clipped()
            Text(artist.description)
                .padding()
                .foregroundStyle(.mainText)
        } .padding(.vertical)
    }
}
#Preview {
    ArtistSheet(artist: artists[0])
}
