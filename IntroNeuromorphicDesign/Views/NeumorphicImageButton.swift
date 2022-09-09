//
//  NeumorphicImageButton.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import SwiftUI
import UIKit

struct NeumorphicImageButton: View {
    
    @State private var isPressed = false
    
    private var systemName:String
    private var onTap: ()-> Void
    private var size : CGSize
    
    
    init(systemName:String, size:CGSize = CGSize(width: 60, height: 60), ontap: @escaping ()-> Void){
        self.systemName = systemName
        self.onTap = ontap
        self.size = size
    }
    
    
    var gray: Color {
        return .gray
    }
    
    var white:Color{
        .white
    }
    
    var body: some View {
        
        
        
        ZStack {
            
            Circle()
                .frame(width: self.size.width + 45, height: self.size.height + 45)
                .foregroundColor(Color(red: 194/255, green: 227/255, blue: 252/255))
            
            Button(action: {
                
                self.isPressed = true
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
                    self.isPressed = false
                    self.onTap()
                }
                
                
                
            }) {
                Image(systemName: systemName)
                    .resizable()
                    .frame(width: self.size.width, height: self.size.height)
                    .padding()
                    .background(Color(red: 0.931, green: 0.931, blue: 0.931))
                
                
                
            }.clipShape(Circle())
                .shadow(color: self.isPressed ? white: gray, radius: self.isPressed ? 4 : 8, x: 8, y: 8)
                .shadow(color: self.isPressed ? gray: white, radius: self.isPressed ? 4 : 8, x: -8, y: -8)
                .scaleEffect(self.isPressed ? 0.95: 1.0)
            .animation(.spring(), value: self.isPressed)
        }
    }
}

struct NeumorphicImageButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicImageButton(systemName: "heart.fill"){}
    }
}
