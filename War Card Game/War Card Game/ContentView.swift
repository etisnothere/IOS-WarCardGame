//
//  ContentView.swift
//  War Card Game
//
//  Created by Eric Tech on 11/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                

                Button {
                    deal()
                } label: {
                    Image("button")
                }


                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)

                    }
                    .padding(10.0)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                    
                    
                }
                .foregroundColor(.white)
                Spacer()
                }
            
            }
        
        }
    func deal(){
        // randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update the scores
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
            //add 1 to player score
        }
        else if playerCardValue < cpuCardValue {
            cpuScore += 1
            //add 1 to cpu score
        }
        
    }
    
    
}


#Preview {
    ContentView()
}
