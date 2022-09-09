//
//  Sound.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import Foundation

struct Sound{
    let id = UUID()
    let title:String
    let author:String
}

extension Sound{
    
    static func getAll()-> [Sound]{
        return[
            Sound(title: "La Marcha Turca", author: "W. Amadeus Mozart"),
            Sound(title: "Entre Dos Tierras", author: "Heroes del Silencio"),
            Sound(title: "Tren al sur", author: "Los Prisioneros"),
            Sound(title: "Las Flores", author: "Cafe Tacvba"),
            Sound(title: "Concierto de Aranjuez", author: "Narciso Yepes"),
            Sound(title: "La Marcha Turca", author: "W. Amadeus Mozart"),
            Sound(title: "Entre Dos Tierras", author: "Heroes del Silencio"),
            Sound(title: "Tren al sur", author: "Los Prisioneros"),
            Sound(title: "Las Flores", author: "Cafe Tacvba"),
            Sound(title: "Concierto de Aranjuez", author: "Narciso Yepes")
            
        ]
    }
     
    
}
