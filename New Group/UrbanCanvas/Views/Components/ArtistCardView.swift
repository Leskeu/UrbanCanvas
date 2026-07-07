//
//  FilteredCard.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import SwiftUI

struct ArtistCardView: View {
    
   @State var detailArtist : DetailArtist
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 165, height: 235)
                .foregroundStyle(.white)
            VStack {
                Image(detailArtist.picture)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 65, height: 65)
                    .clipShape(.circle)
                    .padding(4)
                Text(detailArtist.name)
                    .foregroundStyle(.mainOrange)
                    .padding(4)
                Text("Age : \(detailArtist.age)")
                    .font(.caption2)
                Text("Origines: \(detailArtist.origin)")
                    .font(.caption2)
                Text("Style: \(detailArtist.style)")
                    .font(.caption2)
                Button {
                if let url = URL(string: detailArtist.url) {
                    UIApplication.shared.open(url)
                }
                }label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 26)
                            .frame(width: 136, height: 26)
                            .foregroundStyle(.secondOrange)
                        Text("Site Web")
                            .font(.caption2)
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        
    }
}

#Preview {
    ArtistCardView(detailArtist: detailartists[0])
    }
