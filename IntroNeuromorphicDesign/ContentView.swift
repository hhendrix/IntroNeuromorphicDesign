//
//  ContentView.swift
//  IntroNeuromorphicDesign
//
//  Created by Harry Lopez on 9/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MusicPlayerView()
        }.frame(maxWidth:.infinity, maxHeight:.infinity)
            .background(Color(hue: 1.0, saturation: 0.001, brightness: 0.938))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
