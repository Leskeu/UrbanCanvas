//
//  DataStreetArt.swift
//  UrbanCanvas
//
//  Created by Leskeu  on 01/07/2026.
//

import Foundation

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
    
}

var artists = [
    Artist(name: "KAN DMV", image: "joconde", city: "Marseille", description: "Dans le cadre de l'exposition « La Joconde, exposition immersive » au Palais de la Bourse à Marseille, coproduit par le Grand Palais Immersif et le Musée du Louvre, le MauMA : Musée des arts urbains de MArseille a donné « carte blanche » à l'artiste Kan / DMV pour la réalisation de l'œuvre « La Joconde de Marseille ». Produite et coordonnée par Méta 2, elle est la première représentation urbaine de la célèbre Mona Lisa au sein de la cité phocéenne.", type: "Harlftone", condition: "Bonne", date: "Mars 2022", adress: "Palais de la Bourse, 13001 Marseille\n(Latitude: 43.2965, Longitude: 5.3756)"),
    Artist(name: "Mahn Kloix", image: "tursunayziawudun", city: "Marseille", description: "Sur le mur de 200 m2 de l'opérateur de télécommunications Orange à Marseille, un look domine désormais la ville, signé par l'artiste de rue marseillais Mahn Kloix : celui de Tursunay Ziawudun, une Ouïghoure qui a témoigné sur son épreuve dans les « camps » chinois.", type: "Hyperréalisme", condition: "Bonne", date: "Octobre 2021", adress: "83 Rue Félix Pyat, 13003 Marseille\n(Latitude: 43.31536, Longitude: 5.37466)"),
    Artist(name: "Nhodi", image: "nhodi", city: "Marseille", description: "Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.", type: "Illustration naïve", condition: "Bonne", date: "Octobre 2023", adress: "51 Rue Neuve Sainte-Catherine, 13007 Marseille, France\n(Latitude: 43.29293, Longitude: 5.36418)"),
    Artist(name: "Oror Haze", image: "ororhaze", city: "Septèmes-les-Vallons,", description: "Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.", type: "Low Poly", condition: "Bonne", date: "Aout 2024", adress: "793 Val Dol, 13240 Septèmes-les-Vallons, France\n(Latitude: 43.39847, Longitude: 5.37072)"),
    Artist(name: "MS.Ari", image: "blackcat", city: "Marseille", description: "Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.", type: "Minimaliste", condition: "Bonne", date: "Aout 2025", adress: "23 Rue des Repenties, 13002 Marseille, France\n(Latitude: 43.29774, Longitude: 5.36603)"),
    Artist(name: "Dire 132", image: "desole", city: "Marseille", description: "Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.", type: "Réalisme contemporain", condition: "Bonne", date: "Juin 2023", adress: "25 Rue du Refuge, 13002 Marseille, France\n(Latitude: 43.29708, Longitude: 5.36689)"),
    Artist(name: "Gamo", image: "gamo", city: "Marseille", description: "Haec igitur lex in amicitia sanciatur, ut neque rogemus res turpes nec faciamus rogati. Turpis enim excusatio est et minime accipienda cum in ceteris peccatis, tum si quis contra rem publicam se amici causa fecisse fateatur. Etenim eo loco, Fanni et Scaevola, locati sumus ut nos longe prospicere oporteat futuros casus rei publicae. Deflexit iam aliquantum de spatio curriculoque consuetudo maiorum.", type: "Graffiti Wildstyle", condition: "Bonne", date: "Aout 2025", adress: "23 Rue des Repenties, 13002 Marseille, France\n(Latitude: 43.299280, Longitude: 5.367150)")
]
