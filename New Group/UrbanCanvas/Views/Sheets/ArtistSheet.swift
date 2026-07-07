//
//  ArtistSheet.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 03/07/2026.
//

import SwiftUI

struct ArtistSheet: View {
    @Environment(\.dismiss) var dismiss
    let artist: Artist
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                HStack {
                    Spacer()
                    Button {
                        dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundStyle(.secondText)
                            .bold()
                            .padding()
                            .background(.thinMaterial)
                            .clipShape(.circle)
                    }
                    Spacer()
                    Text(artist.name)
                        .font(.title2)
                        .bold()
                    Spacer()
                    
                    NavigationLink {
                        DetailListView(artist: artist)
                    } label: {
                        Image(systemName: "arrow.right")
                            .foregroundStyle(.white)
                            .padding()
                            .background(.secondOrange)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                
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
}
#Preview {
    ArtistSheet(artist: artists[0])
}
