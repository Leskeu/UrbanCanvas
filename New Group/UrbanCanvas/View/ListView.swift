//
//  SwiftUIView.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 01/07/2026.
//

import SwiftUI

struct SwiftUIView: View {
    var artist : Artist
    var body: some View {
        VStack {
            Text("Liste des Street arts")
        }
    }
}

#Preview {
    SwiftUIView(artist: artists[0])
}
