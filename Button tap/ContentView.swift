//
//  ContentView.swift
//  Button tap
//
//  Created by Melissa Wilkinson on 7/23/20.
//  Copyright © 2020 Watt Wilkinson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var timer = 10
    @State var text = "Start"
    @State private var buttonDisabled = true
    var body: some View {
        VStack {
            Text("Welcome to the button tap game!")
                .multilineTextAlignment(.center).padding()
            
            Text("Tap on the button to play the game")
                .multilineTextAlignment(.center).padding()
            
            Text("Tap as many times as you can before the timer runs out!")
                .multilineTextAlignment(.center).padding()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(text).font(Font.system(size: 55))
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            
            Image("Red circle")
            }
                           Text("Score: \(score)")
                           Text("Time: \(timer)")
        }
        
    }
    func startGame() {
        if timer == 10 {
            func startGame() {
                if timer == 10 {
                    buttonDisabled = false
                    countDown()
                   
                }
                if timer == 0 {
                timer = 15
                score = 0
                text = "Start over!"
                }
            }
            func countDown() {
                if timer > 0 {
                    let seconds = 1.0
                    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                        self.timer = self.timer - 1
                        self.countDown()
                    }
                }else {
                    text = ("Start Over!")
                    buttonDisabled = true
                   
        }
        
    }
           
           
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
