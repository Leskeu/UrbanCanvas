//
//  GridView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 06/07/2026.
//

import SwiftUI

struct GridView: View {
    var columns = [ GridItem(.flexible()), GridItem(.flexible())]
    @State var detailArtist : DetailArtist
    var body: some View {
        ZStack {
            Color.backgroudGray
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns:columns, spacing: 20) {
                    ForEach(detailartists) { artist in
                        ArtistCard(detailArtist: artist)
                    }
                }
            } .padding(.horizontal)
        }
    }
}

#Preview {
    GridView(detailArtist: detailartists[0])
}
