//
//  ContentView.swift
//  FlashCardApp
//
//  Created by Logan Snopek on 2021-12-07.
//

import SwiftUI

//MARK: Strored Proprotes

var currentCard: Card = listOfCards.randomElement()!

//MARK: Computed Proprotes

struct ContentView: View {
    var body: some View {
        VStack{
            //output
            Text(currentCard.question)
                .font(.title)
                .bold()
                .padding()
            //imput
            Button(action: {
                Text("cheack")
            }, label: {
                Text("Check")
            })
            .buttonStyle(.bordered)
            //output
            Text("\"\(currentCard.awnser)\"")
                .font(.title)
                .bold()
                .padding()
            //imput
            Button(action: {
                currentCard = listOfCards.randomElement()!
            }, label: {
                Text("New question")
            })
            .buttonStyle(.bordered)
            .padding()
            
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
