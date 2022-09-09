//
//  MusicPlayerView.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import SwiftUI

struct MusicPlayerView: View {
    
    @State private var sliderValue:Double = 0.5
    @State private var showModalSound = false
    
    var body: some View {
        VStack{
            
            HStack{
                NeumorphicImageButton(systemName: "arrow.left",size: CGSize(width: 20, height: 20), ontap: {})
                    .foregroundColor(.black)
                Spacer()
                Text("PLAYING NOW")
                    .foregroundColor(.gray)
                    .font(.custom("Arial", size: 12))
                    .fontWeight(.semibold)
                
                Spacer()
                NeumorphicImageButton(systemName: "line.horizontal.3",size: CGSize(width: 20, height: 20), ontap: {
                    self.showModalSound.toggle()
                })
                    .foregroundColor(.black)
            }
            .padding()
            
            Spacer()
            ZStack {
                Circle()
                    .frame(width: 315, height: 315)
                    .foregroundColor(.gray)
                
                Image("Medusa")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Circle())
                    .padding()
                    .shadow(color: .gray, radius: 10, x: 9, y: 9)
                    .shadow(color: .white, radius:  10, x: -9, y: -9)
            }.clipShape(Circle().inset(by: 6))
                .shadow(color: .gray, radius: 10, x: 9, y: 9)
                .shadow(color: .white, radius:  10, x: -9, y: -9)
            
            Spacer()
            VStack{
                Text("Lose It")
                    .font(.custom("Arial", size: 28))
                    .fontWeight(.semibold)
                    .padding(.bottom, 10)
                
                Text("Flume ft. Vic mensa")
                    .foregroundColor(.gray)
                    .font(.custom("Arial", size: 14))
                    .fontWeight(.medium)
            }
            
            Spacer()
            
            
            HStack {
                
                VStack{
                HStack{
                    Text("1:21")
                        .foregroundColor(.gray)
                        .font(.custom("Arial", size: 12))
                        .fontWeight(.medium)
                    Spacer()
                    Text("3:46")
                        .foregroundColor(.gray)
                        .font(.custom("Arial", size: 12))
                        .fontWeight(.medium)
                }
                
                Slider(value: self.$sliderValue, in: 0...1, step: 0.1)
                    .shadow(color: .gray, radius: 10, x: 9, y: 9)
                    .shadow(color: .white, radius:  10, x: -9, y: -9)
                }
                
            }.padding()
            
            Spacer()
            
            HStack{
                NeumorphicImageButton(systemName: "backward.fill",size: CGSize(width: 40, height: 40), ontap: {})
                    .foregroundColor(.black)
                
                NeumorphicImageButton(systemName: "stop.fill",size: CGSize(width: 40, height: 50), ontap: {})
                    .foregroundColor(.black)
                
                NeumorphicImageButton(systemName: "forward.fill",size: CGSize(width: 40, height: 40), ontap: {})
                    .foregroundColor(.black)

            }.padding()
            
                .edgesIgnoringSafeArea(.all)
                
        }.frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color(red: 234/255, green: 244/255, blue: 244/255))
            .sheet(isPresented: self.$showModalSound) {
                ListMusicPlayerView()
            }
        
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
