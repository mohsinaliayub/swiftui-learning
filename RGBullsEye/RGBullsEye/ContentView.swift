//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Mohsin Ali Ayub on 09.06.24.
//

import SwiftUI

struct ContentView: View {
    @State private var game = Game()
    @State var guess: RGB
    
    
    var body: some View {
        VStack {
            Color(rgbStruct: game.target)
            Text("R: ??? G: ??? B: ???")
                .padding()
            Color(rgbStruct: guess)
            Text("R: 204 G: 76 B: 178")
                .padding()
            Slider(value: .constant(0.5))
            Button("Hit Me") {
                
            }
        }
    }
}

#Preview {
    ContentView(guess: RGB(red: 0.8, green: 0.3, blue: 0.7))
}
