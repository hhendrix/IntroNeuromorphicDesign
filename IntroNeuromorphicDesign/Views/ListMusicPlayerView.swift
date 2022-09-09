//
//  ListMusicPlayerView.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import SwiftUI

struct ListMusicPlayerView: View {
    
    let sounds:[Sound] = Sound.getAll()
    
    var body: some View {
        VStack(alignment: .center) {
            
            VStack(alignment: .center, spacing: 20){
                HStack{
                    Text("SKIN - FLUME")
                        .foregroundColor(.gray)
                        .font(.custom("Arial", size: 12))
                        .fontWeight(.semibold)
                }
                
                HStack{
                    NeumorphicImageButton(systemName: "heart.fill",size: CGSize(width: 20, height: 20), ontap: {})
                        .foregroundColor(.black)
                    
                    ZStack {
                        Circle()
                            .frame(width: 155, height: 155)
                            .foregroundColor(.gray)
                        
                        Image("Medusa")
                            .resizable()
                            .frame(width: 140, height: 140)
                            .clipShape(Circle())
                            .padding()
                            .shadow(color: .gray, radius: 10, x: 9, y: 9)
                            .shadow(color: .white, radius:  10, x: -9, y: -9)
                    }.clipShape(Circle().inset(by: 6))
                        .shadow(color: .gray, radius: 10, x: 9, y: 9)
                        .shadow(color: .white, radius:  10, x: -9, y: -9)
                        .padding()
                    
                    
                    
                    NeumorphicImageButton(systemName: "ellipsis.circle",size: CGSize(width: 20, height: 20), ontap: {})
                        .foregroundColor(.black)
                }.frame(maxWidth:.infinity)
    
            }.frame(width: .infinity, height: 300)
            
            VStack{
                List(sounds, id: \.id){ sound in
                   CellSound(sound: sound)
                        .listRowBackground(Color(red: 234/255, green: 244/255, blue: 244/255))
                }
                .listStyle(.plain)
                
            }
                
            
            Spacer()
            
            
        }
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color(red: 234/255, green: 244/255, blue: 244/255))
    }
}

struct ListMusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ListMusicPlayerView()
    }
}
