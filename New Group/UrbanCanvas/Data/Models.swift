//
//  Models.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 02/07/2026.
//

import Foundation
import SwiftUI
import CoreLocation

struct Artist : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var city : String
    var description : String
    var type : String
    var condition : String
    var date : String
    var adress : String
    var coordinate: CLLocationCoordinate2D
    var artType: ArtType
   
    
}

enum ArtType: String, CaseIterable, Identifiable {
    var id : RawValue { rawValue }
    
    case tous = "Tous"
    case invaders = "Invaders"
    case mosaiques = "Mosaïques"
    case mural = "Mural"
    case stencil = "Stencil"
    case calligraphie = "Calligraphie"
    
}

struct DetailArtist : Identifiable {
    var id = UUID()
    var name : String
    var age : String
    var origin : String
    var style : String
    var picture : String
    var url : String
}
