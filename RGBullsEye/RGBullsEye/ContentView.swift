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
            Text("R: ???   G: ???   B: ???")
                .padding()
            Color(rgbStruct: guess)
            Text("R: \(Int(guess.red * 255))   " +
                 "G: \(Int(guess.green * 255))   " +
                 "B: \(Int(guess.blue * 255))")
                .padding()
            HStack {
                Text("0")
                Slider(value: $guess.red)
                    .tint(.red)
                Text("255")
            }
            .padding(.horizontal)
            Button("Hit Me") {
                
            }
        }
    }
}

#Preview {
    ContentView(guess: RGB(red: 0.8, green: 0.3, blue: 0.7))
}
