//
//  CellSound.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import SwiftUI

struct CellSound: View {
    
    let sound:Sound
    
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 6){
                    Text(sound.title)
                        .font(.custom("Arial", size: 20))
                        .fontWeight(.semibold)
                    Text(sound.author)
                        .foregroundColor(.gray)
                        .font(.custom("Arial", size: 12))
                        .fontWeight(.medium)
                }
                Spacer()
                NeumorphicImageButton(systemName: "play.fill",size: CGSize(width: 20, height: 20), ontap: {})
                    .foregroundColor(.black)
            }
        }
        
        .background(Color(red: 234/255, green: 244/255, blue: 244/255))
    }
}

struct CellSound_Previews: PreviewProvider {
    static var previews: some View {
        CellSound(sound: Sound(title: "Marcha Turka", author: "W. Amadeus Mozart"))
            
    }
}
