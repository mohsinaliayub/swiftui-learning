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
    @State private var showScore = false
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color(rgbStruct: game.target))
            Text(!showScore ? "R: ???   G: ???   B: ???" : game.target.intString())
                .padding()
            Circle()
                .fill(Color(rgbStruct: guess))
            Text(guess.intString())
                .padding()
            ColorSlider(value: $guess.red, trackColor: .red)
            ColorSlider(value: $guess.green, trackColor: .green)
            ColorSlider(value: $guess.blue, trackColor: .blue)
            Button("Hit Me") {
                showScore = true
                game.check(guess: guess)
            }
            .alert("Your Score", isPresented: $showScore) {
                Button("OK", role: .cancel) {
                    game.startNewRound()
                    guess = RGB()
                }
            } message: {
                Text(String(game.scoreTotal))
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
