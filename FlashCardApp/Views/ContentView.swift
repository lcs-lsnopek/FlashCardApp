//
//  ContentView.swift
//  FlashCardApp
//
//  Created by Logan Snopek on 2021-12-07.
//

import SwiftUI



struct ContentView: View {
    
    //MARK: Strored Proprotes
    
    @State var currentCard: Card = listOfCards.randomElement()!
    
    @State var isAnswerShowing = false
    
    //this is the prevouse Card
    @State var priorCard: Card = listOfCards.randomElement()!
    
    //MARK: Computed Proprotes
    var body: some View {
        VStack{
            //output
            Text(currentCard.question)
                .font(.title)
                .bold()
                .padding()
            //imput
            Button(action: {
                withAnimation {
                    isAnswerShowing = true
                }
            }, label: {
                Text("Check")
            })
                .buttonStyle(.bordered)
            //output
            Text("\"\(currentCard.awnser)\"")
                .bold()
                .font(.title)
                .padding()
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            //imput
            Button(action: {
                
                //hide the awnser
                isAnswerShowing = false
                //save the priorCard
                priorCard = currentCard
                
                //pick a new Card
                currentCard = listOfCards.randomElement()!
                
                // is the new card the same as the old Card
                if currentCard == priorCard {
                    currentCard = listOfCards.randomElement()!
                }
                
            }, label: {
                Text("New question")
            })
                .buttonStyle(.bordered)
                .padding()
                .opacity(isAnswerShowing ? 1.0 : 0.0)
            
            
            Spacer()
            
        }
        .navigationTitle("Flash Cards")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
