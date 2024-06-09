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
            Text(guess.intString())
                .padding()
            ColorSlider(value: $guess.red, trackColor: .red)
            ColorSlider(value: $guess.green, trackColor: .green)
            ColorSlider(value: $guess.blue, trackColor: .blue)
            Button("Hit Me") {
                
            }
        }
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var trackColor: Color
    
    var body: some View {
        HStack {
            Text("0")
            Slider(value: $value)
                .tint(trackColor)
            Text("255")
        }
        .padding(.horizontal)
    }
}





#Preview {
    ContentView(guess: RGB())
}
